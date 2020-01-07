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
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * Meta设置标签，用于模板脚本代码追加，其ParentTag为UILayoutTag和LayoutTag标签
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class MetaTag extends BodyTagSupport {

    private static final long serialVersionUID = 7014634016889539200L;

    private BaseUITag ui;

    private String attrKey;

    private String attrValue;

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
                    setAttrValue(propValue);
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
        StringBuilder builder = new StringBuilder("<meta");
        boolean isEmpty = true;
        if (StringUtils.isNotBlank(this.getAttrKey())) {
            builder.append(StringUtils.SPACE).append(this.getAttrKey());
            isEmpty = false;
        }
        if (StringUtils.isNotEmpty(this.getAttrValue())) {
            builder.append(StringUtils.SPACE).append(this.getAttrValue());
            isEmpty = false;
        }
        builder.append(">\n");
        if (!isEmpty) {
            ui.writerToMetaPart(builder.toString());
        }
        //
        this.ui = null;
        this.attrKey = null;
        this.attrValue = null;
        return super.doEndTag();
    }

    public String getAttrKey() {
        return attrKey;
    }

    public void setAttrKey(String attrKey) {
        this.attrKey = attrKey;
    }

    public String getAttrValue() {
        return attrValue;
    }

    public void setAttrValue(String attrValue) {
        this.attrValue = attrValue;
    }

}
