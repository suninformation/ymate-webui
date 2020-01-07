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
 * 缩略图
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/16 上午2:38
 */
public class ThumbnailTag extends ElementsTag {

    private String caption;

    private String src;
    private String dataSrc;
    private String width;
    private String height;
    private String alt;
    private boolean responsive;

    private String href;
    private boolean blank;

    public ThumbnailTag() {
    }

    @Override
    protected void doSetTagName() {
        if (StringUtils.isBlank(caption)) {
            this.set_tag("a");
            if (StringUtils.isNotBlank(href)) {
                this.getDynamicAttributes().put("href", href);
                if (blank) {
                    this.getDynamicAttributes().put("target", "_blank");
                }
            }
        } else {
            super.doSetTagName();
        }
    }

    @Override
    protected StringBuilder doTagStart() {
        //
        this.set_class(String.format("%s thumbnail", StringUtils.trimToEmpty(this.get_class())));
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
        if (StringUtils.isNotBlank(caption)) {
            builder.append("<div class=\"caption\">").append(caption).append("</div>");
        }
        return doTagEnd(tagContent.append(builder));
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
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

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public boolean isBlank() {
        return blank;
    }

    public void setBlank(boolean blank) {
        this.blank = blank;
    }
}
