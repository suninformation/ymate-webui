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

import net.ymate.platform.webmvc.context.WebContext;
import net.ymate.platform.webmvc.util.WebUtils;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;

/**
 * YMP框架环境的Web应用上下文对象属性存取标签
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class ContextTag extends AbstractTagSupport {

    private static final long serialVersionUID = 5502642633702679976L;

    private String key;

    private String value;

    public static String param(String key) {
        return paramIfDefault(key, null);
    }

    public static String paramIfDefault(String key, String defaultValue) {
        if (StringUtils.isNotBlank(key)) {
            return WebUtils.getOwner().getOwner().getParam(key, defaultValue);
        }
        return null;
    }

    public static String contextAttribute(String attrKey) {
        if (StringUtils.isNotBlank(attrKey)) {
            WebContext context = WebContext.getContext();
            if (context != null) {
                return context.getAttribute(attrKey);
            }
        }
        return null;
    }

    @Override
    protected Object doProcessTagData() throws JspException {
        if (StringUtils.isBlank(getValue())) {
            return contextAttribute(getKey());
        } else {
            WebContext.getContext().addAttribute(getKey(), getValue());
        }
        return null;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

}
