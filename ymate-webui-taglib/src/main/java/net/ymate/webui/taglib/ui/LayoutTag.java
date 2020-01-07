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
 * 布局标签，用于加载解析Layout定义文件，其上下文环境必须存在有UITag签标
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class LayoutTag extends BaseUITag {

    private static final long serialVersionUID = 7959201563636313024L;

    private BaseUITag ui;

    /**
     * Layout模板文件内容
     */
    private String tmplContent;

    /**
     * 自定义占位符名称, 若未提供则默认为body
     */
    private String name;

    @Override
    public int doStartTag() throws JspException {
        ui = (BaseUITag) this.getParent();
        if (ui == null) {
            throw new JspException("Parent UITag or LayoutTag not found.");
        }
        try {
            if (StringUtils.isNotBlank(this.getSrc())) {
                tmplContent = WebUtils.includeJsp(
                        (HttpServletRequest) this.pageContext.getRequest(),
                        (HttpServletResponse) this.pageContext.getResponse(),
                        this.buildSrcUrl(), ui.getCharsetEncoding());
            } else {
                tmplContent = StringUtils.EMPTY;
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
                String layoutBody = StringUtils.defaultIfBlank(this.bodyContent.getString(), StringUtils.EMPTY);
                if (StringUtils.isNotBlank(tmplContent)) {
                    this.writerToBodyPart(layoutBody);
                } else {
                    tmplContent = layoutBody;
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
        try {
            ui.writerToMetaPart(this.getMetaPartContent());
            ui.writerToCssPart(this.getCssPartContent());
            ui.writerToScriptPart(this.getScriptPartContent());
            tmplContent = this.mergeContent(StringUtils.defaultIfBlank(tmplContent, StringUtils.EMPTY));
            //
            if (StringUtils.equalsIgnoreCase(name, "body")) {
                ui.putProperty(name, !isCleanup() ? tmplContent : WebUtils.replaceRegClear(tmplContent));
            } else {
                ui.writerToBodyPart(!isCleanup() ? tmplContent : WebUtils.replaceRegClear(tmplContent));
            }
        } catch (Exception e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        //
        this.ui = null;
        this.tmplContent = null;
        this.name = null;
        return super.doEndTag();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
