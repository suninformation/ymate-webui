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
 * 警告框--链接
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/13 上午7:07
 */
public class AlertLinkTag extends ElementsTag {

    private String href;

    private boolean blank;

    public AlertLinkTag() {
    }

    @Override
    protected void doSetTagName() {
        this.set_tag("a");
        if (StringUtils.isNotBlank(href)) {
            this.getDynamicAttributes().put("href", href);
        }
        if (blank) {
            this.getDynamicAttributes().put("target", "_blank");
        }
        //
        this.set_class(String.format("%s alert-link", StringUtils.trimToEmpty(this.get_class())));
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public boolean isBlank() {
        return blank;
    }

    public void setBlank(boolean blank) {
        this.blank = blank;
    }
}
