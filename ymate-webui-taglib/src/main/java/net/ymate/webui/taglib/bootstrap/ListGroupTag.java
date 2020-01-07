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
 * 列表组
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/14 下午6:49
 */
public class ListGroupTag extends ElementsTag {

    private boolean link;

    public ListGroupTag() {
    }

    @Override
    protected void doSetTagName() {
        if (!link) {
            this.set_tag("ul");
        }
        super.doSetTagName();
    }

    @Override
    protected StringBuilder doTagStart() {
        this.set_class(String.format("%s list-group", StringUtils.trimToEmpty(this.get_class())));
        //
        return super.doTagStart();
    }

    public boolean isLink() {
        return link;
    }

    public void setLink(boolean link) {
        this.link = link;
    }
}
