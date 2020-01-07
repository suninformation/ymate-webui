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
 * CSS设置标签，用于模板脚本代码追加，其ParentTag为UILayoutTag和LayoutTag标签
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class CssTag extends BodyTagSupport {

    private static final long serialVersionUID = -1975747968925711584L;

    private BaseUITag ui;

    private String href;

    private String rel;

    private String media;

    private String type;

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
                this.bodyContent.clearBody();
            }
        } catch (Exception e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        return super.doAfterBody();
    }

    @Override
    public int doEndTag() throws JspException {
        StringBuilder builder = new StringBuilder("<link");
        boolean isEmpty = true;
        if (StringUtils.isNotBlank(this.getHref())) {
            builder.append(" href=\"").append(this.getHref()).append(ElementsTag.QUOTE_FLAG);
            isEmpty = false;
        }
        if (!isEmpty) {
            if (StringUtils.isBlank(this.getRel())) {
                this.setRel("stylesheet");
            }
            builder.append(" rel=\"").append(this.getRel()).append(ElementsTag.QUOTE_FLAG);
            //
            if (StringUtils.isNotBlank(this.getType())) {
                builder.append(" type=\"").append(this.getType()).append(ElementsTag.QUOTE_FLAG);
            }
            //
            if (StringUtils.isNotBlank(this.getMedia())) {
                builder.append(" media=\"").append(this.getMedia()).append(ElementsTag.QUOTE_FLAG);
            }
            builder.append(">\n");
            ui.writerToCssPart(builder.toString());
        }
        //
        this.ui = null;
        this.href = null;
        this.rel = null;
        this.media = null;
        this.type = null;
        return super.doEndTag();
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getRel() {
        return rel;
    }

    public void setRel(String rel) {
        this.rel = rel;
    }

    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
