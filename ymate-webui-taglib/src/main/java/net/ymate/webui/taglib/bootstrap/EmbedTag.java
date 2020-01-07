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
 * 嵌入内容
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/16 上午1:23
 */
public class EmbedTag extends ElementsTag {

    private boolean ratio16by9;
    private boolean ratio4by3;
    private boolean iframe;
    private String width;
    private String height;
    private boolean allowfullscreen;

    public EmbedTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        builder.append(" embed-responsive");
        if (ratio16by9) {
            builder.append(" embed-responsive-16by9");
        } else if (ratio4by3) {
            builder.append(" embed-responsive-4by3");
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        if (iframe) {
            tagContent.append("<iframe class=\"embed-responsive-item\"");
            if (StringUtils.isNotBlank(width)) {
                tagContent.append(" width=\"").append(width).append(QUOTE_FLAG);
            }
            if (StringUtils.isNotBlank(height)) {
                tagContent.append(" height=\"").append(height).append(QUOTE_FLAG);
            }
            if (allowfullscreen) {
                tagContent.append(" allowfullscreen");
            }
            tagContent.append(" src=\"").append(StringUtils.trimToEmpty(bodyContent.toString())).append("\"></iframe>");
            //
            return doTagEnd(tagContent);
        }
        return super.doTagContent(tagContent, bodyContent);
    }

    public boolean isRatio16by9() {
        return ratio16by9;
    }

    public void setRatio16by9(boolean ratio16by9) {
        this.ratio16by9 = ratio16by9;
    }

    public boolean isRatio4by3() {
        return ratio4by3;
    }

    public void setRatio4by3(boolean ratio4by3) {
        this.ratio4by3 = ratio4by3;
    }

    public boolean isIframe() {
        return iframe;
    }

    public void setIframe(boolean iframe) {
        this.iframe = iframe;
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

    public boolean isAllowfullscreen() {
        return allowfullscreen;
    }

    public void setAllowfullscreen(boolean allowfullscreen) {
        this.allowfullscreen = allowfullscreen;
    }
}
