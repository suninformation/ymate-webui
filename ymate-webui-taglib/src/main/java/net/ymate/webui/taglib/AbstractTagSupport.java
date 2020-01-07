/*
 * Copyright 2007-2020 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package net.ymate.webui.taglib;

import net.ymate.platform.commons.util.RuntimeUtils;
import org.apache.commons.lang.NullArgumentException;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.DynamicAttributes;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 自定义标签抽象实现类，子类仅需编写业务逻辑数据处理过程，由此类负责变量及作用域的保存
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public abstract class AbstractTagSupport extends BodyTagSupport implements DynamicAttributes {

    private static final long serialVersionUID = -1603817445681542882L;

    public static final String DEFAULT_CHARSET = "UTF-8";

    /**
     * 变量名称
     */
    private String var;

    /**
     * 变量存储作用域，默认：page（取值范围：application, session, request, page）
     */
    private String scope;

    /**
     * 总是执行标签体，忽略标签返回数据是否为NULL，开发人员需注意，默认：false
     */
    private boolean always;

    /**
     * 内部迭代器
     */
    private Iterator<?> iterator;

    /**
     * 序号, 用于内部迭代器执行计数
     */
    private int sequence;

    /**
     * 内循环开关，通过该属性让子类判断是否需要调用setIterator方法
     */
    private boolean innerLoop;

    /**
     * 存放动态属性数据
     */
    protected Map<String, Object> dynamicAttributes = new LinkedHashMap<>();

    /**
     * 构造器
     */
    public AbstractTagSupport() {
    }

    @Override
    public int doStartTag() throws JspException {
        // Init
        iterator = null;
        sequence = 0;
        //
        Object resultObj = doProcessTagData();
        // 若内部迭代器存在，则执行迭代处理逻辑
        if (iterator != null) {
            if (StringUtils.isBlank(getVar())) {
                throw new NullArgumentException("var");
            }
            if (iterator.hasNext()) {
                doProcessIteratorTagDataStatus(iterator.next(), ++sequence);
                return EVAL_BODY_AGAIN;
            }
            return SKIP_BODY;
        } else {
            // 否则按正常逻辑处理
            if (resultObj != null) {
                if (StringUtils.isNotBlank(getVar())) {
                    switch (Scope.valueOf(StringUtils.defaultIfEmpty(getScope(), Scope.PAGE.name()).toUpperCase())) {
                        case APPLICATION:
                            pageContext.getServletContext().setAttribute(getVar(), resultObj);
                            break;
                        case REQUEST:
                            pageContext.getRequest().setAttribute(getVar(), resultObj);
                            break;
                        case SESSION:
                            pageContext.getSession().setAttribute(getVar(), resultObj);
                            break;
                        default:
                            pageContext.setAttribute(getVar(), resultObj);
                    }
                } else if (resultObj instanceof String) {
                    try {
                        pageContext.getOut().write(resultObj.toString());
                    } catch (IOException e) {
                        throw new JspException(e.getMessage(), RuntimeUtils.unwrapThrow(e));
                    }
                }
                return EVAL_BODY_INCLUDE;
            }
            return isAlways() ? EVAL_BODY_INCLUDE : SKIP_BODY;
        }
    }

    @Override
    public int doAfterBody() throws JspException {
        if (iterator != null) {
            if (iterator.hasNext()) {
                doProcessIteratorTagDataStatus(iterator.next(), ++sequence);
                return EVAL_BODY_AGAIN;
            } else {
                return SKIP_BODY;
            }
        }
        return super.doAfterBody();
    }

    @Override
    public int doEndTag() throws JspException {
        if (iterator != null) {
            try {
                if (this.getBodyContent() != null) {
                    pageContext.getOut().write(this.getBodyContent().getString());
                    this.getBodyContent().clearBody();
                }
            } catch (IOException e) {
                throw new JspException(RuntimeUtils.unwrapThrow(e));
            }
        }
        return super.doEndTag();
    }

    /**
     * 由子类标签实现具体数据处理过程
     *
     * @return 返回处理结果对象
     * @throws JspException 可能产生的异常
     */
    protected abstract Object doProcessTagData() throws JspException;

    /**
     * 处理迭代数据时，通过该方法进行数据状态的存储等
     *
     * @param data     当前迭代数据
     * @param sequence 当前迭代计数
     * @throws JspException 可能产生的异常
     */
    protected void doProcessIteratorTagDataStatus(Object data, int sequence) throws JspException {
        pageContext.setAttribute(getVar(), data);
        pageContext.setAttribute(String.format("%s_sequence", getVar()), sequence);
    }

    protected boolean doInitIterator(Iterator<?> iterator, int pageCount, long recordCount) throws JspException {
        if (innerLoop) {
            // 分页查询时必须提供var参数值
            if (StringUtils.isBlank(var)) {
                throw new NullArgumentException("var");
            }
            //
            this.setIterator(iterator);
            // 分页查询且开始内部迭代机制时，将提供“总记录数”和“总分页数”两个参数
            pageContext.setAttribute(String.format("%s_records", var), recordCount);
            pageContext.setAttribute(String.format("%s_pages", var), pageCount);
            //
            return true;
        }
        return false;
    }

    /**
     * @return 返回动态属性映射
     */
    public Map<String, Object> getDynamicAttributes() {
        return dynamicAttributes;
    }

    /**
     * @param attrName 动态属性名称
     * @return 根据动态属性名称获取属性值对象
     */
    public Object getDynamicAttribute(String attrName) {
        return dynamicAttributes.get(attrName);
    }

    @Override
    public void setDynamicAttribute(String uri, String localName, Object value) throws JspException {
        dynamicAttributes.put(localName, value);
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public boolean isAlways() {
        return always;
    }

    public void setAlways(boolean always) {
        this.always = always;
    }

    /**
     * 设置迭代对象引用，该迭代器将影响标签的执行方式和结果
     *
     * @param iterator 迭代对象引用对象
     */
    protected void setIterator(Iterator<?> iterator) {
        this.iterator = iterator;
    }

    public boolean isInnerLoop() {
        return innerLoop;
    }

    public void setInnerLoop(boolean innerLoop) {
        this.innerLoop = innerLoop;
    }
}
