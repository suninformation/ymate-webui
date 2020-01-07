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
package net.ymate.webui.taglib.bootstrap;

import net.ymate.webui.taglib.ElementsTag;
import org.apache.commons.lang3.StringUtils;

/**
 * 文本
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/12 上午5:24
 */
public class TextTag extends ElementsTag {

    private boolean left;
    private boolean right;

    private String style;
    private String bgStyle;

    private String href;

    private boolean alignLeft;
    private boolean alignRight;
    private boolean alignCenter;

    private boolean justified;
    private boolean nowrap;

    private boolean lowercase;
    private boolean uppercase;
    private boolean capitalize;

    private boolean lead;

    private boolean isNavbar;

    public TextTag() {
    }

    @Override
    protected void doSetTagName() {
        this.set_tag(StringUtils.defaultIfBlank(this.get_tag(), "p"));
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        isNavbar = this.getParent() instanceof NavbarTag;
        if (isNavbar) {
            builder.append(" navbar-text");
            if (left) {
                builder.append(" navbar-left");
            } else if (right) {
                builder.append(" navbar-right");
            }
        }
        //
        if (StringUtils.isNotBlank(style)) {
            builder.append(" text-").append(style);
        }
        if (StringUtils.isNotBlank(bgStyle)) {
            builder.append(" bg-").append(bgStyle);
        }
        //
        if (alignLeft) {
            builder.append(" text-left");
        } else if (alignRight) {
            builder.append(" text-right");
        } else if (alignCenter) {
            builder.append(" text-center");
        }
        //
        if (justified) {
            builder.append(" text-justified");
        }
        if (nowrap) {
            builder.append(" text-nowrap");
        }
        //
        if (lowercase) {
            builder.append(" text-lowercase");
        } else if (uppercase) {
            builder.append(" text-uppercase");
        } else if (capitalize) {
            builder.append(" text-capitalize");
        }
        //
        if (lead) {
            builder.append(" lead");
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        if (StringUtils.isNotBlank(href)) {
            StringBuilder builder = new StringBuilder("<a href=\"").append(href).append(QUOTE_FLAG);
            if (isNavbar) {
                builder.append(" class=\"navbar-link\"");
            }
            builder.append(END_TAG_FLAG);
            bodyContent.insert(0, builder).append("</a>");
        }
        return super.doTagContent(tagContent, bodyContent);
    }

    public boolean isLeft() {
        return left;
    }

    public void setLeft(boolean left) {
        this.left = left;
    }

    public boolean isRight() {
        return right;
    }

    public void setRight(boolean right) {
        this.right = right;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getBgStyle() {
        return bgStyle;
    }

    public void setBgStyle(String bgStyle) {
        this.bgStyle = bgStyle;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public boolean isAlignLeft() {
        return alignLeft;
    }

    public void setAlignLeft(boolean alignLeft) {
        this.alignLeft = alignLeft;
    }

    public boolean isAlignRight() {
        return alignRight;
    }

    public void setAlignRight(boolean alignRight) {
        this.alignRight = alignRight;
    }

    public boolean isAlignCenter() {
        return alignCenter;
    }

    public void setAlignCenter(boolean alignCenter) {
        this.alignCenter = alignCenter;
    }

    public boolean isJustified() {
        return justified;
    }

    public void setJustified(boolean justified) {
        this.justified = justified;
    }

    public boolean isNowrap() {
        return nowrap;
    }

    public void setNowrap(boolean nowrap) {
        this.nowrap = nowrap;
    }

    public boolean isLowercase() {
        return lowercase;
    }

    public void setLowercase(boolean lowercase) {
        this.lowercase = lowercase;
    }

    public boolean isUppercase() {
        return uppercase;
    }

    public void setUppercase(boolean uppercase) {
        this.uppercase = uppercase;
    }

    public boolean isCapitalize() {
        return capitalize;
    }

    public void setCapitalize(boolean capitalize) {
        this.capitalize = capitalize;
    }

    public boolean isLead() {
        return lead;
    }

    public void setLead(boolean lead) {
        this.lead = lead;
    }
}
