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

import net.ymate.platform.commons.util.RuntimeUtils;
import net.ymate.platform.webmvc.util.TokenProcessHelper;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Token标签
 *
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public class TokenTag extends TagSupport {

    private static final long serialVersionUID = 3543848202628493208L;

    private String name;

    private boolean create;

    /**
     * 构造器
     */
    public TokenTag() {
    }

    @Override
    public int doStartTag() throws JspException {
        StringBuilder stringBuilder = new StringBuilder();
        HttpSession session = pageContext.getSession();
        if (session != null) {
            String tokenValue;
            if (create) {
                if (StringUtils.isNotBlank(name)) {
                    tokenValue = TokenProcessHelper.getInstance().saveToken((HttpServletRequest) pageContext.getRequest(), name);
                } else {
                    tokenValue = TokenProcessHelper.getInstance().saveToken((HttpServletRequest) pageContext.getRequest());
                }
            } else {
                tokenValue = TokenProcessHelper.getInstance().getToken((HttpServletRequest) pageContext.getRequest(), name);
            }
            if (StringUtils.isNotBlank(tokenValue)) {
                stringBuilder.append(String.format("<input type=\"hidden\" name=\"%s\" value\"%s\">", StringUtils.defaultIfBlank(name, TokenProcessHelper.TOKEN_KEY), tokenValue));
            }
        }
        try {
            pageContext.getOut().println(stringBuilder.toString());
        } catch (IOException e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        return SKIP_BODY;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isCreate() {
        return create;
    }

    public void setCreate(boolean create) {
        this.create = create;
    }
}
