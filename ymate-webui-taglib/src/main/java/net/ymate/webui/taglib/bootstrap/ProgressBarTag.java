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
 * 进度条容器
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/15 下午6:35
 */
public class ProgressBarTag extends ElementsTag {

    private String style;
    private Integer value;

    private boolean showLabel;

    private boolean striped;
    private boolean active;

    public ProgressBarTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        builder.append(" progress-bar");
        if (StringUtils.isNotBlank(style)) {
            builder.append(" progress-bar-").append(style);
        }
        if (striped) {
            builder.append(" progress-striped");
        }
        if (active) {
            builder.append(" active");
        }
        this.set_style(String.format("%s width:%d%%;", StringUtils.trimToEmpty(this.get_style()), value == null ? 0 : value));
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        tagContent.append("<span");
        if (!showLabel) {
            tagContent.append(" class=\"sr-only\"");
        }
        tagContent.append(END_TAG_FLAG).append(value == null ? 0 : value).append("%</span>");
        //
        return super.doTagContent(tagContent, bodyContent);
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public boolean isShowLabel() {
        return showLabel;
    }

    public void setShowLabel(boolean showLabel) {
        this.showLabel = showLabel;
    }

    public boolean isStriped() {
        return striped;
    }

    public void setStriped(boolean striped) {
        this.striped = striped;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
