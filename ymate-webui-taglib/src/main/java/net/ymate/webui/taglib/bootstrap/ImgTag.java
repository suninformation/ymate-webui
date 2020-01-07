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
 * 图片
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/12 上午7:16
 */
public class ImgTag extends ElementsTag {

    private String src;
    private String dataSrc;

    private String height;
    private String width;

    private String alt;

    private boolean responsive;
    private boolean rounded;
    private boolean circle;
    private boolean thumbnail;

    public ImgTag() {
    }

    @Override
    protected void doSetTagName() {
        this.set_tag("img");
        this.set_unclosed(true);
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        //
        if (responsive) {
            builder.append(" img-responsive");
        }
        if (rounded) {
            builder.append(" img-rounded");
        } else if (circle) {
            builder.append(" img-circle");
        } else if (thumbnail) {
            builder.append(" img-thumbnail");
        }
        //
        this.set_class(builder.toString());
        //
        if (StringUtils.isNotBlank(src)) {
            this.getDynamicAttributes().put("src", src);
        } else if (StringUtils.isNotBlank(dataSrc)) {
            this.getDynamicAttributes().put("data-src", dataSrc);
        }
        if (StringUtils.isNotBlank(width)) {
            this.getDynamicAttributes().put("width", width);
        }
        if (StringUtils.isNotBlank(height)) {
            this.getDynamicAttributes().put("height", height);
        }
        if (StringUtils.isNotBlank(alt)) {
            this.getDynamicAttributes().put("alt", alt);
        }
        //
        return super.doTagStart();
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

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWidth() {
        return width;
    }

    public void setWidth(String width) {
        this.width = width;
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

    public boolean isRounded() {
        return rounded;
    }

    public void setRounded(boolean rounded) {
        this.rounded = rounded;
    }

    public boolean isCircle() {
        return circle;
    }

    public void setCircle(boolean circle) {
        this.circle = circle;
    }

    public boolean isThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(boolean thumbnail) {
        this.thumbnail = thumbnail;
    }
}
