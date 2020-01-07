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

import net.ymate.platform.commons.util.UUIDUtils;
import net.ymate.webui.taglib.ElementsTag;
import org.apache.commons.lang3.StringUtils;

/**
 * Carousel
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/15 下午5:00
 */
public class CarouselTag extends ElementsTag {

    private Integer indicators;
    private boolean controls;

    public CarouselTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        this.set_id(StringUtils.defaultIfBlank(this.get_id(), UUIDUtils.UUID()));
        this.set_class(String.format("%s carousel slide", StringUtils.trimToEmpty(this.get_class())));
        //
        this.getDynamicAttributes().put("data-ride", "carousel");
        //
        return super.doTagStart();
    }

    @Override
    protected StringBuilder doTagContent(StringBuilder tagContent, StringBuilder bodyContent) {
        StringBuilder builder = new StringBuilder();
        if (indicators != null && indicators > 0) {
            builder.append("<ol class=\"carousel-indicators\">");
            for (int idx = 0; idx < indicators; idx++) {
                builder.append("<li data-target=\"#").append(this.get_id()).append("\" data-slide-to=\"").append(idx).append(QUOTE_FLAG);
                if (idx == 0) {
                    builder.append(" class=\"active\"");
                }
                builder.append("></li>");
            }
            builder.append("</ol>");
        }
        builder.append("<div class=\"carousel-inner\" role=\"listbox\">").append(bodyContent).append("</div>");
        if (controls) {
            builder.append("<a class=\"left carousel-control\" href=\"#").append(this.get_id()).append("\" role=\"button\" data-slide=\"prev\"><span class=\"glyphicon glyphicon-chevron-left\"></span><span class=\"sr-only\">Previous</span></a>");
            builder.append("<a class=\"right carousel-control\" href=\"#").append(this.get_id()).append("\" role=\"button\" data-slide=\"next\"><span class=\"glyphicon glyphicon-chevron-right\"></span><span class=\"sr-only\">Next</span></a>");
        }
        return doTagEnd(tagContent.append(builder));
    }

    public Integer getIndicators() {
        return indicators;
    }

    public void setIndicators(Integer indicators) {
        this.indicators = indicators;
    }

    public boolean isControls() {
        return controls;
    }

    public void setControls(boolean controls) {
        this.controls = controls;
    }
}
