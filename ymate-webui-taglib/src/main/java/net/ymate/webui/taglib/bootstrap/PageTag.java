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
 * 页面
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/14 下午2:15
 */
public class PageTag extends ElementsTag {

    private String title;
    private String viewport;
    private String keywords;
    private String description;
    private String author;
    private String lang;
    private String charset;

    private String headerBody;

    public PageTag() {
    }

    @Override
    protected void doSetTagName() {
        this.set_tag("body");
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        lang = StringUtils.defaultIfBlank(lang, "en");
        charset = StringUtils.defaultIfBlank(charset, "utf-8");
        viewport = StringUtils.defaultIfBlank(viewport, "width=device-width, initial-scale=1");
        //
        StringBuilder builder = new StringBuilder("<!DOCTYPE html>");
        builder.append("<!--[if IE 8]> <html lang=\"").append(lang).append("\" class=\"ie8 no-js\"> <![endif]-->");
        builder.append("<!--[if IE 9]> <html lang=\"").append(lang).append("\" class=\"ie9 no-js\"> <![endif]-->");
        builder.append("<!--[if !IE]><!-->");
        builder.append("<html lang=\"").append(lang).append("\" class=\"no-js\">");
        builder.append("<!--<![endif]-->");
        builder.append("<head>");
        builder.append("<meta charset=\"").append(charset).append("\">");
        builder.append("<title>").append(StringUtils.trimToEmpty(title)).append("</title>");
        builder.append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">");
        builder.append("<meta name=\"viewport\" content=\"").append(viewport).append("\">");
        if (StringUtils.isNotBlank(keywords)) {
            builder.append("<meta name=\"keywords\" content=\"").append(keywords).append("\">");
        }
        if (StringUtils.isNotBlank(description)) {
            builder.append("<meta name=\"description\" content=\"").append(description).append("\">");
        }
        if (StringUtils.isNotBlank(author)) {
            builder.append("<meta name=\"author\" content=\"").append(author).append("\">");
        }
        if (StringUtils.isNotBlank(headerBody)) {
            builder.append(headerBody);
        }
        builder.append("</head>");
        //
        return super.doTagContent(tagContent.insert(0, builder), bodyContent).append("</html>");
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getViewport() {
        return viewport;
    }

    public void setViewport(String viewport) {
        this.viewport = viewport;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public String getCharset() {
        return charset;
    }

    public void setCharset(String charset) {
        this.charset = charset;
    }

    public String getHeaderBody() {
        return headerBody;
    }

    public void setHeaderBody(String headerBody) {
        this.headerBody = headerBody;
    }
}
