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
 * 按钮
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/13 上午12:23
 * @version 1.0
 */
public class ButtonTag extends ElementsTag {

    private boolean left;
    private boolean right;

    private String type;
    private String style;

    private String href;

    private boolean block;
    private boolean disabled;

    private boolean dropdown;

    private String collapseId;
    private String modalId;

    private String tip;
    private String placement;

    private String popover;
    private String content;

    private boolean mini;
    private boolean small;
    private boolean large;

    public ButtonTag() {
    }

    @Override
    protected void doSetTagName() {
        if (StringUtils.isNotBlank(href)) {
            this.set_tag("a");
            this.getDynamicAttributes().put("href", href);
        } else {
            this.set_tag("button");
            this.getDynamicAttributes().put("type", StringUtils.defaultIfBlank(type, "button"));
        }
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder _classSB = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        if (StringUtils.isBlank(href)) {
            _classSB.append(" btn btn-").append(StringUtils.defaultIfBlank(style, "default"));
        } else if (StringUtils.isNotBlank(style)) {
            _classSB.append(" btn btn-").append(style);
        }
        if (this.getParent() instanceof NavbarTag) {
            _classSB.append(" navbar-btn");
            if (left) {
                _classSB.append(" navbar-left");
            } else if (right) {
                _classSB.append(" navbar-right");
            }
        }
        //
        if (block) {
            _classSB.append(" btn-block");
        }
        if (mini) {
            _classSB.append(" btn-xs");
        } else if (small) {
            _classSB.append(" btn-sm");
        } else if (large) {
            _classSB.append(" btn-lg");
        }
        if (disabled) {
            _classSB.append(" disabled");
        }
        if (dropdown) {
            _classSB.append(" dropdown-toggle");
            //
            this.getDynamicAttributes().put("data-toggle", "dropdown");
        } else if (StringUtils.isNotBlank(collapseId)) {
            this.getDynamicAttributes().put("data-toggle", "collapse");
            this.getDynamicAttributes().put("data-target", "#" + collapseId);
        } else if (StringUtils.isNotBlank(modalId)) {
            this.getDynamicAttributes().put("data-toggle", "modal");
            this.getDynamicAttributes().put("data-target", "#" + modalId);
        }
        if (StringUtils.isNotBlank(tip) || StringUtils.isNotBlank(popover)) {
            this.getDynamicAttributes().put("data-container", "body");
            if (StringUtils.isNotBlank(tip)) {
                this.getDynamicAttributes().put("data-tip", "tooltip");
                this.getDynamicAttributes().put("title", tip);
            } else {
                this.getDynamicAttributes().put("data-popover", "popover");
                if (StringUtils.isNotBlank(content)) {
                    this.getDynamicAttributes().put("data-content", content);
                    this.getDynamicAttributes().put("title", popover);
                } else {
                    this.getDynamicAttributes().put("data-content", popover);
                }
            }
            this.getDynamicAttributes().put("data-placement", StringUtils.defaultIfBlank(placement, "auto"));
        }
        //
        this.set_class(_classSB.toString());
        //
        return super.doTagStart();
    }

    public boolean isLeft() {
        return left;
    }

    public void setLeft(boolean left) {
        this.left = left;
    }

    public boolean isRight() {
        return right;
    }

    public void setRight(boolean right) {
        this.right = right;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public boolean isBlock() {
        return block;
    }

    public void setBlock(boolean block) {
        this.block = block;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public boolean isDropdown() {
        return dropdown;
    }

    public void setDropdown(boolean dropdown) {
        this.dropdown = dropdown;
    }

    public String getCollapseId() {
        return collapseId;
    }

    public void setCollapseId(String collapseId) {
        this.collapseId = collapseId;
    }

    public String getModalId() {
        return modalId;
    }

    public void setModalId(String modalId) {
        this.modalId = modalId;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public String getPlacement() {
        return placement;
    }

    public void setPlacement(String placement) {
        this.placement = placement;
    }

    public String getPopover() {
        return popover;
    }

    public void setPopover(String popover) {
        this.popover = popover;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isMini() {
        return mini;
    }

    public void setMini(boolean mini) {
        this.mini = mini;
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
