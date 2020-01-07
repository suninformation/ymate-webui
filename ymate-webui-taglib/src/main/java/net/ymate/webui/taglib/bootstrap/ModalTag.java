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
 * 模态框
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/16 上午1:56
 */
public class ModalTag extends ElementsTag {

    private String title;
    private boolean fade;
    private boolean nonStatic;

    private String dialogClass;

    private boolean draggable;

    private boolean small;
    private boolean large;

    public ModalTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class())).append(" modal");
        if (fade) {
            builder.append(" fade");
        }
        if (!nonStatic) {
            this.getDynamicAttributes().put("data-backdrop", "static");
            this.getDynamicAttributes().put("data-keyboard", "false");
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        tagContent.append("<div class=\"modal-dialog");
        if (small) {
            tagContent.append(" modal-sm");
        } else if (large) {
            tagContent.append(" modal-lg");
        }
        if (StringUtils.isNotBlank(dialogClass)) {
            tagContent.append(StringUtils.SPACE).append(dialogClass);
        }
        if (draggable) {
            tagContent.append("\" data-draggable=\"draggable");
        }
        tagContent.append("\">").append("<div class=\"modal-content\">").append(bodyContent).append("</div>").append("</div>");
        return doTagEnd(tagContent);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isFade() {
        return fade;
    }

    public void setFade(boolean fade) {
        this.fade = fade;
    }

    public boolean isNonStatic() {
        return nonStatic;
    }

    public void setNonStatic(boolean nonStatic) {
        this.nonStatic = nonStatic;
    }

    public String getDialogClass() {
        return dialogClass;
    }

    public void setDialogClass(String dialogClass) {
        this.dialogClass = dialogClass;
    }

    public boolean isDraggable() {
        return draggable;
    }

    public void setDraggable(boolean draggable) {
        this.draggable = draggable;
    }

    public boolean isSmall() {
        return small;
    }

    public void setSmall(boolean small) {
        this.small = small;
    }

    public boolean isLarge() {
        return large;
    }

    public void setLarge(boolean large) {
        this.large = large;
    }
}
