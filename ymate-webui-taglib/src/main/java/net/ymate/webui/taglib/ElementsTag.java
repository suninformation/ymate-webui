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
import org.apache.commons.lang3.StringUtils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.DynamicAttributes;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @author 刘镇 (suninformation@163.com) on 16/11/12 上午2:48
 */
public class ElementsTag extends BodyTagSupport implements DynamicAttributes {

    public static final String QUOTE_FLAG = "\"";

    public static final String EQ_QUOTE_FLAG = "=" + QUOTE_FLAG;

    public static final String START_TAG_FLAG = "<";

    public static final String END_TAG_FLAG = ">";

    public static final String START_END_TAG_FLAG = "</";

    private Map<String, Object> dynamicAttributes = new LinkedHashMap<>();

    private String _id;

    private String _class;

    private String _style;

    private String _tag;

    private boolean _unclosed;

    public ElementsTag() {
    }

    protected void doSetTagName() {
        _tag = StringUtils.defaultIfBlank(_tag, "div");
    }

    protected StringBuilder doTagStart() {
        doSetTagName();
        //
        StringBuilder tagBuilder = new StringBuilder(START_TAG_FLAG).append(_tag);
        if (StringUtils.isNotBlank(_id)) {
            tagBuilder.append(" id").append(EQ_QUOTE_FLAG).append(_id).append(QUOTE_FLAG);
        }
        if (StringUtils.isNotBlank(_class)) {
            tagBuilder.append(" class").append(EQ_QUOTE_FLAG).append(_class).append(QUOTE_FLAG);
        }
        if (StringUtils.isNotBlank(_style)) {
            tagBuilder.append(" style").append(EQ_QUOTE_FLAG).append(_style).append(QUOTE_FLAG);
        }
        for (Map.Entry<String, Object> attrEntry : dynamicAttributes.entrySet()) {
            if (null != attrEntry.getValue()) {
                if (attrEntry.getValue() instanceof String) {
                    String attrValue = StringUtils.trimToNull((String) attrEntry.getValue());
                    if (attrValue != null) {
                        tagBuilder.append(StringUtils.SPACE).append(attrEntry.getKey()).append(EQ_QUOTE_FLAG).append(attrValue).append(QUOTE_FLAG);
                    }
                } else if (boolean.class.isAssignableFrom(attrEntry.getValue().getClass()) || attrEntry.getValue() instanceof Boolean) {
                    tagBuilder.append(StringUtils.SPACE).append(attrEntry.getKey());
                } else {
                    tagBuilder.append(StringUtils.SPACE).append(attrEntry.getKey()).append(EQ_QUOTE_FLAG).append(attrEntry.getValue()).append(QUOTE_FLAG);
                }
            }
        }
        return tagBuilder.append(END_TAG_FLAG);
    }

    protected StringBuilder doTagEnd(StringBuilder tagContent) {
        if (!_unclosed) {
            tagContent.append(START_END_TAG_FLAG).append(_tag).append(END_TAG_FLAG);
        }
        return tagContent;
    }

    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        return doTagEnd(tagContent.append(bodyContent));
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            StringBuilder tagContent = doTagStart();
            if (this.getBodyContent() != null) {
                doTagContent(tagContent, new StringBuilder(this.getBodyContent().getString()));
                this.getBodyContent().clearBody();
            } else {
                doTagContent(tagContent, new StringBuilder(0));
            }
            if (tagContent.length() > 0) {
                pageContext.getOut().write(tagContent.toString());
            }
        } catch (IOException e) {
            throw new JspException(RuntimeUtils.unwrapThrow(e));
        }
        this._id = null;
        this._class = null;
        this._style = null;
        this._tag = null;
        this._unclosed = false;
        this.dynamicAttributes.clear();
        return super.doEndTag();
    }

    public Map<String, Object> getDynamicAttributes() {
        return dynamicAttributes;
    }

    public Object getDynamicAttribute(String attrName) {
        return dynamicAttributes.get(attrName);
    }

    @Override
    public void setDynamicAttribute(String uri, String localName, Object value) throws JspException {
        dynamicAttributes.put(localName, value);
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String get_class() {
        return _class;
    }

    public void set_class(String _class) {
        this._class = _class;
    }

    public String get_style() {
        return _style;
    }

    public void set_style(String _style) {
        this._style = _style;
    }

    public String get_tag() {
        return _tag;
    }

    public void set_tag(String _tag) {
        this._tag = _tag;
    }

    public boolean get_unclosed() {
        return _unclosed;
    }

    public void set_unclosed(boolean _unclosed) {
        this._unclosed = _unclosed;
    }
}
