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
 * 导航条
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/12 上午6:22
 */
public class NavbarTag extends ElementsTag {

    private boolean inverse;

    private boolean staticTop;
    private boolean fixedTop;
    private boolean fixedBottom;

    private boolean container;
    private boolean fluid;

    private String collapseId;
    private String toggleBtn;

    private String headBody;

    private boolean emptyBody;

    private String brand;
    private String href;

    public NavbarTag() {
    }

    @Override
    protected void doSetTagName() {
        this.set_tag(StringUtils.defaultIfBlank(this.get_tag(), "nav"));
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class())).append(" navbar navbar-");
        if (inverse) {
            builder.append("inverse");
        } else {
            builder.append("default");
        }
        //
        if (staticTop) {
            builder.append(" navbar-static-top");
        } else if (fixedTop) {
            builder.append(" navbar-fixed-top");
        } else if (fixedBottom) {
            builder.append(" navbar-fixed-bottom");
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        if (container) {
            tagContent.append("<div class=\"container");
            if (fluid) {
                tagContent.append("-fluid");
            }
            tagContent.append("\">");
        }
        //
        if (StringUtils.isNotBlank(headBody) || StringUtils.isNotBlank(brand) || StringUtils.isNotBlank(collapseId)) {
            tagContent.append("<div class=\"navbar-header\">");
            //
            tagContent.append("<button type=\"button\" class=\"navbar-toggle collapsed\"");
            if (StringUtils.isNotBlank(collapseId)) {
                tagContent.append(" data-toggle=\"collapse\" data-target=\"#").append(collapseId).append(QUOTE_FLAG);
            }
            tagContent.append("\">");
            tagContent.append("<span class=\"sr-only\">navigation</span>");
            if (StringUtils.isNotBlank(toggleBtn)) {
                tagContent.append(toggleBtn);
            } else {
                tagContent.append("<span class=\"icon-bar\"></span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span>");
            }
            //
            tagContent.append("</button>");
            //
            if (StringUtils.isNotBlank(brand)) {
                tagContent.append("<a class=\"navbar-brand\"");
                if (StringUtils.isNotBlank(href)) {
                    tagContent.append(" href=\"").append(href).append(QUOTE_FLAG);
                }
                tagContent.append(END_TAG_FLAG).append(brand).append("</a>");
            }
            //
            if (StringUtils.isNotBlank(headBody)) {
                tagContent.append(headBody);
            }
            //
            tagContent.append("</div>");
        }
        //
        if (emptyBody) {
            tagContent.append(bodyContent);
        } else {
            tagContent.append("<div class=\"collapse navbar-collapse\"");
            if (StringUtils.isNotBlank(collapseId)) {
                tagContent.append(" id=\"").append(collapseId).append(QUOTE_FLAG);
            }
            tagContent.append(END_TAG_FLAG).append(bodyContent).append("</div>");
        }
        bodyContent.setLength(0);
        //
        if (container) {
            tagContent.append("</div>");
        }
        return super.doTagContent(tagContent, bodyContent);
    }

    public boolean isInverse() {
        return inverse;
    }

    public void setInverse(boolean inverse) {
        this.inverse = inverse;
    }

    public boolean isStaticTop() {
        return staticTop;
    }

    public void setStaticTop(boolean staticTop) {
        this.staticTop = staticTop;
    }

    public boolean isFixedTop() {
        return fixedTop;
    }

    public void setFixedTop(boolean fixedTop) {
        this.fixedTop = fixedTop;
    }

    public boolean isFixedBottom() {
        return fixedBottom;
    }

    public void setFixedBottom(boolean fixedBottom) {
        this.fixedBottom = fixedBottom;
    }

    public boolean isContainer() {
        return container;
    }

    public void setContainer(boolean container) {
        this.container = container;
    }

    public boolean isFluid() {
        return fluid;
    }

    public void setFluid(boolean fluid) {
        this.fluid = fluid;
    }

    public String getCollapseId() {
        return collapseId;
    }

    public void setCollapseId(String collapseId) {
        this.collapseId = collapseId;
    }

    public String getToggleBtn() {
        return toggleBtn;
    }

    public void setToggleBtn(String toggleBtn) {
        this.toggleBtn = toggleBtn;
    }

    public String getHeadBody() {
        return headBody;
    }

    public void setHeadBody(String headBody) {
        this.headBody = headBody;
    }

    public boolean isEmptyBody() {
        return emptyBody;
    }

    public void setEmptyBody(boolean emptyBody) {
        this.emptyBody = emptyBody;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }
}
