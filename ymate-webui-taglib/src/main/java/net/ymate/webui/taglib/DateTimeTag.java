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
package net.ymate.webui.taglib;

import net.ymate.platform.commons.util.DateTimeUtils;

import javax.servlet.jsp.JspException;

/**
 * @author 刘镇 (suninformation@163.com) on 14-8-5
 */
public class DateTimeTag extends AbstractTagSupport {

    private Long date;

    private boolean utc;

    private String pattern;

    @Override
    protected Object doProcessTagData() throws JspException {
        if (date == null) {
            return DateTimeUtils.formatTime(System.currentTimeMillis(), pattern);
        } else if (utc) {
            date *= 1000L;
        }
        return DateTimeUtils.formatTime(date, pattern);
    }

    public Long getDate() {
        return date;
    }

    public void setDate(Long date) {
        this.date = date;
    }

    public boolean isUtc() {
        return utc;
    }

    public void setUtc(boolean utc) {
        this.utc = utc;
    }

    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }
}
