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

import net.ymate.platform.webmvc.IWebMvc;
import net.ymate.platform.webmvc.util.WebUtils;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;

/**
 * 国际化资源加载标签
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class I18nTag extends AbstractTagSupport {

    private static final long serialVersionUID = 2418822724624807336L;

    public static String defaultIfBlank(String str, String defaultStr) {
        return StringUtils.defaultIfBlank(str, defaultStr);
    }

    public static String i18nMsg(String resourceName, String key) {
        return i18nMsg(resourceName, key, StringUtils.EMPTY);
    }

    public static String i18nMsg(String resourceName, String key, String defaultValue) {
        IWebMvc owner = WebUtils.getOwner();
        return owner.getOwner().getI18n().formatMessage(StringUtils.defaultIfBlank(resourceName, owner.getConfig().getResourceName()), key, defaultValue);
    }

    private String resourceName;
    private String key;
    private String defaultValue;

    @Override
    protected Object doProcessTagData() throws JspException {
        return i18nMsg(getResourceName(), getKey(), getDefaultValue());
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getResourceName() {
        return resourceName;
    }

    public void setResourceName(String resourceName) {
        this.resourceName = resourceName;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

}
