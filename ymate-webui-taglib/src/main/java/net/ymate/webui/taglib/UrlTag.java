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

import net.ymate.platform.webmvc.util.WebUtils;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;

/**
 * URL标签，可根据BaseUrl基准路径生成请求URL或直接输出BaseUrl
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class UrlTag extends AbstractTagSupport {

    private static final long serialVersionUID = 9177172857130896780L;

    private String path;

    private boolean withBase;

    @Override
    protected Object doProcessTagData() throws JspException {
        if (StringUtils.isNotBlank(getPath())) {
            return WebUtils.buildUrl((HttpServletRequest) pageContext.getRequest(), getPath(), isWithBase());
        }
        return WebUtils.baseUrl((HttpServletRequest) pageContext.getRequest());
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public boolean isWithBase() {
        return withBase;
    }

    public void setWithBase(boolean withBase) {
        this.withBase = withBase;
    }

}
