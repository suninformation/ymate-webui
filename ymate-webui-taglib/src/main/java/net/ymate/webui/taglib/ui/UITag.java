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
import net.ymate.platform.webmvc.util.WebUtils;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;

/**
 * UI页面标签，用于页面模板及环境变量初始化
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class UITag extends BaseUITag {

    private static final long serialVersionUID = 584494119933433838L;

    private boolean current;

    /**
     * @return 返回当前线程中的UITag对象
     */
    public UITag currentUI() {
        return (UITag) this.pageContext.getAttribute(UITag.class.getName());
    }

    @Override
    public int doStartTag() throws JspException {
        try {
            if (currentUI() == null) {
                current = true;
                this.pageContext.setAttribute(UITag.class.getName(), this);
            }
        } catch (Exception e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        return super.doStartTag();
    }

    @Override
    public int doAfterBody() throws JspException {
        try {
            if (this.bodyContent != null) {
                this.bodyContent.clearBody();
            }
        } catch (Exception e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        return super.doAfterBody();
    }

    @Override
    public int doEndTag() throws JspException {
        if (current) {
            try {
                /* UI模板文件内容 */
                String tmplContent = null;
                if (StringUtils.isNotBlank(this.getSrc())) {
                    tmplContent = WebUtils.includeJsp(
                            (HttpServletRequest) this.pageContext.getRequest(),
                            (HttpServletResponse) this.pageContext.getResponse(),
                            this.buildSrcUrl(), this.getCharsetEncoding());
                }
                tmplContent = this.mergeContent(StringUtils.defaultIfBlank(tmplContent, "@{body}"));
                this.pageContext.getOut().write(!isCleanup() ? tmplContent : WebUtils.replaceRegClear(tmplContent));
            } catch (Exception e) {
                throw new JspException(RuntimeUtils.unwrapThrow(e));
            }
        }
        this.current = false;
        return super.doEndTag();
    }

}
