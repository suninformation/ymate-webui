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
package net.ymate.webui.taglib.ui;

import net.ymate.platform.commons.util.RuntimeUtils;
import net.ymate.webui.taglib.ElementsTag;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * 脚本设置标签，用于模板脚本代码追加，其ParentTag为UILayoutTag和LayoutTag标签
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class ScriptTag extends BodyTagSupport {

    private static final long serialVersionUID = -2774067114541501535L;

    private BaseUITag ui;

    private String src;

    private String value;

    private String type;

    private String wrapper;

    @Override
    public int doStartTag() throws JspException {
        ui = (BaseUITag) this.getParent();
        if (ui == null) {
            throw new JspException("Parent UITag or LayoutTag not found.");
        }
        return super.doStartTag();
    }

    @Override
    public int doAfterBody() throws JspException {
        try {
            if (this.bodyContent != null) {
                String propValue = this.bodyContent.getString();
                if (StringUtils.isNotBlank(propValue)) {
                    this.setValue(propValue);
                }
                this.bodyContent.clearBody();
            }
        } catch (Exception e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        return super.doAfterBody();
    }

    @Override
    public int doEndTag() throws JspException {
        StringBuilder builder = new StringBuilder("<script");
        if (StringUtils.isNotBlank(this.getId())) {
            builder.append(" id=\"").append(this.getId()).append(ElementsTag.QUOTE_FLAG);
        }
        boolean isEmpty = true;
        if (StringUtils.isNotBlank(this.getSrc())) {
            builder.append(" src=\"").append(this.getSrc()).append(ElementsTag.QUOTE_FLAG);
            isEmpty = false;
        }
        builder.append(" type=\"").append(StringUtils.defaultIfBlank(this.getType(), "text/javascript")).append("\">");
        if (isEmpty && StringUtils.isNotEmpty(getValue())) {
            String currWrapper = StringUtils.defaultIfBlank(this.getWrapper(), "script");
            String content = StringUtils.substringBetween(getValue(), String.format("<%s>", currWrapper), String.format("</%s>", currWrapper));
            if (StringUtils.isNotBlank(content)) {
                setValue(content);
            }
            builder.append(this.getValue()).append("\n");
            isEmpty = false;
        }
        builder.append("</script>\n");
        if (!isEmpty) {
            ui.writerToScriptPart(builder.toString());
        }
        //
        this.ui = null;
        this.src = null;
        this.value = null;
        this.id = null;
        this.type = null;
        this.wrapper = null;
        return super.doEndTag();
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getWrapper() {
        return wrapper;
    }

    public void setWrapper(String wrapper) {
        this.wrapper = wrapper;
    }
}
