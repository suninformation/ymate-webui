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
 * 面板标题
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/20 上午3:15
 */
public class PanelHeadingTag extends ElementsTag {

    private String title;
    private String icon;

    private boolean before;

    public PanelHeadingTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        //
        this.set_class(String.format("%s panel-heading", StringUtils.trimToEmpty(this.get_class())));
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        if (StringUtils.isNotBlank(title)) {
            if (before) {
                tagContent.append(bodyContent);
                bodyContent.setLength(0);
            }
            tagContent.append("<h3 class=\"panel-title\">");
            if (StringUtils.isNotBlank(icon)) {
                tagContent.append("<i class=\"fa fa-").append(icon).append(" fa-fw\"></i>").append(StringUtils.SPACE);
            }
            tagContent.append(title).append("</h3>");
        }
        return super.doTagContent(tagContent, bodyContent);
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

    public boolean isBefore() {
        return before;
    }

    public void setBefore(boolean before) {
        this.before = before;
    }
}
