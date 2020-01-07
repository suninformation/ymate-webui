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
package net.ymate.webui.taglib.ui;

import net.ymate.platform.webmvc.util.ViewPathUtils;
import net.ymate.platform.webmvc.util.WebUtils;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;

/**
 * @author 刘镇 (suninformation@163.com) on 14-7-6
 */
public abstract class BaseUITag extends BodyTagSupport {

    private static final long serialVersionUID = 8425802569545340622L;

    /**
     * 模板文件路径
     */
    private String src;

    /**
     * 皮肤主题名称
     */
    private String theme;

    /**
     * 插件名
     */
    private String plugin;

    /**
     * 字符编码
     */
    private String charsetEncoding;

    /**
     * 清理占位符
     */
    private boolean cleanup = true;

    //

    private StringBuilder tmplBodyPart;

    private StringBuilder tmplScriptPart;

    private StringBuilder tmplMetaPart;

    private StringBuilder tmplCssPart;

    private Map<String, String> tmplPropertyPart;

    @Override
    public int doStartTag() throws JspException {
        tmplBodyPart = new StringBuilder();
        tmplScriptPart = new StringBuilder();
        tmplMetaPart = new StringBuilder();
        tmplCssPart = new StringBuilder();
        tmplPropertyPart = new HashMap<>(16);
        //
        return super.doStartTag();
    }

    @Override
    public int doEndTag() throws JspException {
        this.src = null;
        this.theme = null;
        this.plugin = null;
        this.charsetEncoding = null;
        this.cleanup = true;
        //
        return super.doEndTag();
    }

    @Override
    public void release() {
        tmplBodyPart = null;
        tmplScriptPart = null;
        tmplMetaPart = null;
        tmplCssPart = null;
        if (tmplPropertyPart != null) {
            tmplPropertyPart.clear();
            tmplPropertyPart = null;
        }
        super.release();
    }

    public String mergeContent(String tmplContent) throws JspException {
        if (StringUtils.isNotBlank(tmplContent)) {
            if (tmplMetaPart.length() > 0) {
                tmplContent = WebUtils.replaceRegText(tmplContent, "meta", tmplMetaPart.toString());
            }
            if (tmplCssPart.length() > 0) {
                tmplContent = WebUtils.replaceRegText(tmplContent, "css", tmplCssPart.toString());
            }
            if (tmplScriptPart.length() > 0) {
                tmplContent = WebUtils.replaceRegText(tmplContent, "script", tmplScriptPart.toString());
            }
            if (tmplBodyPart.length() > 0) {
                tmplContent = WebUtils.replaceRegText(tmplContent, "body", tmplBodyPart.toString());
            }
            for (Map.Entry<String, String> entry : tmplPropertyPart.entrySet()) {
                tmplContent = WebUtils.replaceRegText(tmplContent, entry.getKey(), entry.getValue());
            }
        }
        return tmplContent;
    }

    public String buildSrcUrl() {
        if (StringUtils.isNotBlank(this.getSrc())) {
            StringBuilder urlBuilder = new StringBuilder();
            if (!this.getSrc().startsWith("/")) {
                if (StringUtils.isNotBlank(this.getPlugin())) {
                    urlBuilder.append(ViewPathUtils.getPluginViewPath()).append(this.getPlugin()).append("/");
                } else {
                    urlBuilder.append(ViewPathUtils.getViewPath());
                }
                if (StringUtils.isNotBlank(this.getTheme())) {
                    urlBuilder.append(this.getTheme()).append("/");
                }
            }
            urlBuilder.append(this.getSrc());
            if (!this.getSrc().endsWith(".jsp")) {
                urlBuilder.append(".jsp");
            }
            return urlBuilder.toString();
        }
        return this.getSrc();
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getPlugin() {
        return plugin;
    }

    public void setPlugin(String plugin) {
        this.plugin = plugin;
    }

    public String getCharsetEncoding() {
        return charsetEncoding;
    }

    public void setCharsetEncoding(String charsetEncoding) {
        this.charsetEncoding = charsetEncoding;
    }

    public boolean isCleanup() {
        return cleanup;
    }

    public void setCleanup(boolean cleanup) {
        this.cleanup = cleanup;
    }

    public String getBodyPartContent() {
        return tmplBodyPart.toString();
    }

    public void writerToBodyPart(String content) {
        tmplBodyPart.append(Matcher.quoteReplacement(content));
    }

    public String getMetaPartContent() {
        return tmplMetaPart.toString();
    }

    public void writerToMetaPart(String content) {
        tmplMetaPart.append(Matcher.quoteReplacement(content));
    }

    public String getCssPartContent() {
        return tmplCssPart.toString();
    }

    public void writerToCssPart(String content) {
        tmplCssPart.append(Matcher.quoteReplacement(content));
    }

    public String getScriptPartContent() {
        return tmplScriptPart.toString();
    }

    public void writerToScriptPart(String content) {
        tmplScriptPart.append(Matcher.quoteReplacement(content));
    }

    public void putProperty(String key, String value) {
        tmplPropertyPart.put(key, Matcher.quoteReplacement(value));
    }

    protected Map<String, String> getPropertyPart() {
        return Collections.unmodifiableMap(this.tmplPropertyPart);
    }
}
