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
 * CarouselItem
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/15 下午5:00
 */
public class CarouselItemTag extends ElementsTag {

    private String caption;
    private boolean active;

    private String src;
    private String dataSrc;
    private String width;
    private String height;
    private String alt;
    private boolean responsive;

    public CarouselItemTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        builder.append(" item");
        if (active) {
            builder.append(" active");
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        StringBuilder builder = new StringBuilder();
        if (StringUtils.isNotBlank(src) || StringUtils.isNotBlank(dataSrc)) {
            builder.append("<img");
            if (responsive) {
                builder.append(" class=\"img-responsive\"");
            }
            if (StringUtils.isNotBlank(src)) {
                builder.append(" src=\"").append(src).append(QUOTE_FLAG);
            } else {
                builder.append(" data-src=\"").append(dataSrc).append(QUOTE_FLAG);
            }
            if (StringUtils.isNotBlank(width)) {
                builder.append(" width=\"").append(width).append(QUOTE_FLAG);
            }
            if (StringUtils.isNotBlank(height)) {
                builder.append(" height=\"").append(height).append(QUOTE_FLAG);
            }
            builder.append(" alt=\"").append(StringUtils.trimToEmpty(alt)).append("\">");
        } else {
            builder.append(bodyContent);
        }
        builder.append("<div class=\"carousel-caption\">").append(StringUtils.trimToEmpty(caption)).append("</div>");
        return doTagEnd(tagContent.append(builder));
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDataSrc() {
        return dataSrc;
    }

    public void setDataSrc(String dataSrc) {
        this.dataSrc = dataSrc;
    }

    public String getWidth() {
        return width;
    }

    public void setWidth(String width) {
        this.width = width;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getAlt() {
        return alt;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public boolean isResponsive() {
        return responsive;
    }

    public void setResponsive(boolean responsive) {
        this.responsive = responsive;
    }
}
