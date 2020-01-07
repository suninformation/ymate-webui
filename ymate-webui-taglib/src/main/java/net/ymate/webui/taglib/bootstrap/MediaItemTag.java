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
 * 媒体列表项
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/15 上午3:43
 */
public class MediaItemTag extends ElementsTag {

    private String title;
    private String href;

    private String image;
    private String src;
    private String alt;
    private String width;
    private String height;

    private boolean right;
    private boolean middle;
    private boolean bottom;

    public MediaItemTag() {
    }

    @Override
    protected void doSetTagName() {
        if (this.getParent() instanceof MediaListTag) {
            this.set_tag("li");
        }
        super.doSetTagName();
    }

    @Override
    protected StringBuilder doTagStart() {
        this.set_class(String.format("%s media", StringUtils.trimToEmpty(this.get_class())));
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        StringBuilder mediaBody = new StringBuilder("<div class=\"media-body\"><h4 class=\"media-heading\">")
                .append(StringUtils.trimToEmpty(title)).append("</h4>").append(bodyContent).append("</div>");
        StringBuilder builder = new StringBuilder();
        builder.append("<div class=\"");
        if (right) {
            builder.append(" media-right");
        } else {
            builder.append(" media-left");
        }
        if (middle) {
            builder.append(" media-middle");
        } else if (bottom) {
            builder.append(" media-bottom");
        }
        builder.append("\"><a href=\"").append(StringUtils.defaultIfBlank(href, "#")).append("\">");
        if (StringUtils.isNotBlank(image)) {
            builder.append(image);
        } else {
            builder.append("<img src=\"").append(StringUtils.trimToEmpty(src)).append("\" alt=\"").append(StringUtils.trimToEmpty(alt)).append(QUOTE_FLAG);
            if (StringUtils.isNotBlank(width)) {
                builder.append(" width=\"").append(width).append(QUOTE_FLAG);
            }
            if (StringUtils.isNotBlank(height)) {
                builder.append(" height=\"").append(height).append(QUOTE_FLAG);
            }
            builder.append(END_TAG_FLAG);
        }
        builder.append("</a></div>");
        if (right) {
            builder.insert(0, mediaBody);
        } else {
            builder.append(mediaBody);
        }
        //
        return doTagEnd(tagContent.append(builder));
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getAlt() {
        return alt;
    }

    public void setAlt(String alt) {
        this.alt = alt;
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

    public boolean isRight() {
        return right;
    }

    public void setRight(boolean right) {
        this.right = right;
    }

    public boolean isMiddle() {
        return middle;
    }

    public void setMiddle(boolean middle) {
        this.middle = middle;
    }

    public boolean isBottom() {
        return bottom;
    }

    public void setBottom(boolean bottom) {
        this.bottom = bottom;
    }
}
