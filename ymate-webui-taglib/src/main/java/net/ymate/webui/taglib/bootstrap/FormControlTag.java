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
 * 表单控件
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/13 上午3:15
 */
public class FormControlTag extends ElementsTag {

    private String type;

    private String name;
    private String value;

    private Integer rows;

    private String placeholder;

    private String helpBlock;
    private String helpBlockClass;

    private String label;
    private Integer labelWidth;
    private boolean labelSrOnly;

    private boolean nonControl;
    private boolean multiple;
    private boolean disabled;

    private boolean inline;

    private FormGroupTag formGroupTag;

    public FormControlTag() {
    }

    @Override
    protected void doSetTagName() {
        if (StringUtils.isNotBlank(type)) {
            if (StringUtils.equalsIgnoreCase(type, "static")) {
                this.set_tag("p");
            } else if (StringUtils.equalsIgnoreCase(type, "textarea")) {
                this.set_tag("textarea");
                if (rows != null && rows > 0) {
                    this.getDynamicAttributes().put("rows", rows);
                }
            } else if (StringUtils.equalsIgnoreCase(type, "select")) {
                this.set_tag("select");
                if (multiple) {
                    this.getDynamicAttributes().put("multiple", true);
                }
            } else if (StringUtils.equalsIgnoreCase(type, "checkbox") || StringUtils.equalsIgnoreCase(type, "radio")) {
                this.set_tag("div");
            } else {
                this.set_tag("input");
                this.set_unclosed(true);
                //
                this.getDynamicAttributes().put("type", type);
                if (StringUtils.isNotBlank(value)) {
                    this.getDynamicAttributes().put("value", value);
                }
            }
        }
    }

    @Override
    protected StringBuilder doTagStart() {
        if (StringUtils.isNotBlank(type)) {
            StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
            if (StringUtils.equalsIgnoreCase(type, "checkbox") || StringUtils.equalsIgnoreCase(type, "radio")) {
                builder.append(StringUtils.SPACE).append(type);
            } else {
                if (this.getParent() instanceof FormGroupTag) {
                    formGroupTag = (FormGroupTag) this.getParent();
                }
                if (!nonControl) {
                    builder.append(" form-control");
                }
                if (StringUtils.equalsIgnoreCase(type, "static")) {
                    builder.append("-static");
                }
                if (formGroupTag != null) {
                    if (formGroupTag.isSmall()) {
                        builder.append(" input-sm");
                    } else if (formGroupTag.isLarge()) {
                        builder.append(" input-lg");
                    }
                }
                if (StringUtils.isNotBlank(name)) {
                    this.getDynamicAttributes().put("name", name);
                }
                if (disabled) {
                    this.getDynamicAttributes().put("disabled", true);
                }
                if (StringUtils.isNotBlank(placeholder)) {
                    this.getDynamicAttributes().put("placeholder", placeholder);
                }
            }
            //
            this.set_class(builder.toString());
            //
            return super.doTagStart();
        }
        return new StringBuilder();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        StringBuilder builder = new StringBuilder();
        if (StringUtils.isNotBlank(label)) {
            builder.append("<label class=\"control-label");
            if (labelWidth != null && labelWidth > 0) {
                builder.append(" col-sm-").append(labelWidth);
                if (labelSrOnly) {
                    builder.append(" sr-only");
                }
            }
            builder.append(QUOTE_FLAG);
            if (StringUtils.isNotBlank(this.get_id()) && !StringUtils.equalsIgnoreCase(type, "static")) {
                builder.append(" for=\"").append(this.get_id()).append(QUOTE_FLAG);
            }
            builder.append(END_TAG_FLAG).append(label).append("</label>");
            if (labelWidth != null && labelWidth > 0) {
                builder.append("<div class=\"col-sm-").append(12 - labelWidth).append("\">");
            }
        }
        tagContent.insert(0, builder).append(bodyContent);
        if (StringUtils.isNotBlank(type)) {
            tagContent = doTagEnd(tagContent);
        }
        if (formGroupTag != null && StringUtils.isNotBlank(formGroupTag.getFeedbackIcon())) {
            tagContent.append("<span class=\"").append(formGroupTag.getFeedbackIcon()).append(" form-control-feedback\"></span>");
        }
        if (StringUtils.isNotBlank(helpBlock) || StringUtils.isNotBlank(helpBlockClass)) {
            tagContent.append("<span class=\"help-block ").append(StringUtils.trimToEmpty(helpBlockClass)).append("\">").append(StringUtils.trimToEmpty(helpBlock)).append("</span>");
        }
        if (StringUtils.isNotBlank(label) && labelWidth != null && labelWidth > 0) {
            tagContent.append("</div>");
        }
        return tagContent;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getPlaceholder() {
        return placeholder;
    }

    public void setPlaceholder(String placeholder) {
        this.placeholder = placeholder;
    }

    public String getHelpBlock() {
        return helpBlock;
    }

    public void setHelpBlock(String helpBlock) {
        this.helpBlock = helpBlock;
    }

    public String getHelpBlockClass() {
        return helpBlockClass;
    }

    public void setHelpBlockClass(String helpBlockClass) {
        this.helpBlockClass = helpBlockClass;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Integer getLabelWidth() {
        return labelWidth;
    }

    public void setLabelWidth(Integer labelWidth) {
        this.labelWidth = labelWidth;
    }

    public boolean isLabelSrOnly() {
        return labelSrOnly;
    }

    public void setLabelSrOnly(boolean labelSrOnly) {
        this.labelSrOnly = labelSrOnly;
    }

    public boolean isNonControl() {
        return nonControl;
    }

    public void setNonControl(boolean nonControl) {
        this.nonControl = nonControl;
    }

    public boolean isMultiple() {
        return multiple;
    }

    public void setMultiple(boolean multiple) {
        this.multiple = multiple;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public boolean isInline() {
        return inline;
    }

    public void setInline(boolean inline) {
        this.inline = inline;
    }
}
