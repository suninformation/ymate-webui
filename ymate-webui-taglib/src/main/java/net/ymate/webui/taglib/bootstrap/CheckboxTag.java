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
 * 表单控件--复选
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/13 上午5:25
 */
public class CheckboxTag extends ElementsTag {

    private String name;
    private String value;

    private boolean checked;
    private boolean disabled;

    private FormControlTag formControlTag;

    public CheckboxTag() {
    }

    @Override
    protected void doSetTagName() {
        if (this.getParent() instanceof FormControlTag) {
            formControlTag = (FormControlTag) this.getParent();
            this.set_tag("input");
            this.set_unclosed(true);
            this.getDynamicAttributes().put("type", formControlTag.getType());
        }
    }

    @Override
    protected StringBuilder doTagStart() {
        if (this.getParent() instanceof FormControlTag) {
            formControlTag = (FormControlTag) this.getParent();
            //
            if (StringUtils.isNotBlank(name)) {
                this.getDynamicAttributes().put("name", name);
            }
            if (StringUtils.isNotBlank(value)) {
                this.getDynamicAttributes().put("value", value);
            }
            if (checked) {
                this.getDynamicAttributes().put("checked", true);
            }
            if (disabled) {
                this.getDynamicAttributes().put("disabled", true);
            }
            //
            return super.doTagStart();
        }
        return new StringBuilder();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        if (this.getParent() instanceof FormControlTag) {
            StringBuilder builder = new StringBuilder();
            builder.append("<label");
            if (formControlTag != null && formControlTag.isInline()) {
                builder.append(" class=\"").append(formControlTag.getType()).append("-inline\"");
            }
            builder.append(END_TAG_FLAG);
            tagContent.insert(0, builder).append(bodyContent).append("</label>");
        }
        return tagContent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }
}
