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
 * Collapse
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/15 上午5:16
 */
public class CollapseTag extends ElementsTag {

    private boolean expanded;

    public CollapseTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        if (this.getParent() instanceof PanelTag) {
            builder.append(" panel-collapse");
        }
        builder.append(" collapse");
        if (expanded) {
            builder.append(" in");
        }
        //
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    public boolean isExpanded() {
        return expanded;
    }

    public void setExpanded(boolean expanded) {
        this.expanded = expanded;
    }
}
