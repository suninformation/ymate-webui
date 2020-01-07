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
 * 面板
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/12 上午7:49
 */
public class PanelTag extends ElementsTag {

    private boolean tabs;

    private String style;

    private boolean active;
    private boolean fade;

    private String heading;
    private String title;
    private String icon;

    public PanelTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        if (tabs) {
            builder.append(" tab-pane");
            //
            if (fade) {
                builder.append(" fade");
            }
            if (active) {
                if (fade) {
                    builder.append(" in");
                }
                builder.append(" active");
            }
        } else {
            builder.append(" panel panel-").append(StringUtils.defaultIfBlank(style, "default"));
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        if (!tabs) {
            if (StringUtils.isNotBlank(heading) || StringUtils.isNotBlank(title)) {
                tagContent.append("<div class=\"panel-heading\">");
                if (StringUtils.isNotBlank(heading)) {
                    tagContent.append(heading);
                } else if (StringUtils.isNotBlank(title)) {
                    tagContent.append("<h3 class=\"panel-title\">");
                    if (StringUtils.isNotBlank(icon)) {
                        tagContent.append("<i class=\"fa fa-").append(icon).append(" fa-fw\"></i> ");
                    }
                    tagContent.append(title).append("</h3>");
                }
                tagContent.append("</div>");
            }
        }
        return super.doTagContent(tagContent, bodyContent);
    }

    public boolean isTabs() {
        return tabs;
    }

    public void setTabs(boolean tabs) {
        this.tabs = tabs;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public boolean isFade() {
        return fade;
    }

    public void setFade(boolean fade) {
        this.fade = fade;
    }

    public String getHeading() {
        return heading;
    }

    public void setHeading(String heading) {
        this.heading = heading;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
