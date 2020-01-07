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
 * 栅格系统-列
 *
 * @author 刘镇 (suninformation@163.com) on 16/11/12 上午4:58
 */
public class ColTag extends ElementsTag {

    private Integer md;
    private Integer mdOffset;
    private Integer mdPush;
    private Integer mdPull;

    private Integer xs;
    private Integer xsOffset;
    private Integer xsPush;
    private Integer xsPull;

    private Integer sm;
    private Integer smOffset;
    private Integer smPush;
    private Integer smPull;

    private Integer lg;
    private Integer lgOffset;
    private Integer lgPush;
    private Integer lgPull;

    public ColTag() {
    }

    @Override
    protected StringBuilder doTagStart() {
        StringBuilder builder = new StringBuilder(StringUtils.trimToEmpty(this.get_class()));
        if (md != null && md > 0) {
            builder.append(" col-md-").append(md);
            if (mdOffset != null && mdOffset > 0) {
                builder.append(" col-md-offset-").append(mdOffset);
            }
            if (mdPush != null && mdPush > 0) {
                builder.append(" col-md-push-").append(mdPush);
            }
            if (mdPull != null && mdPull > 0) {
                builder.append(" col-md-pull-").append(mdPull);
            }
        }
        if (xs != null && xs > 0) {
            builder.append(" col-xs-").append(xs);
            if (xsOffset != null && xsOffset > 0) {
                builder.append(" col-xs-offset-").append(xsOffset);
            }
            if (xsPush != null && xsPush > 0) {
                builder.append(" col-xs-push-").append(xsPush);
            }
            if (xsPull != null && xsPull > 0) {
                builder.append(" col-xs-pull-").append(xsPull);
            }
        }
        if (sm != null && sm > 0) {
            builder.append(" col-sm-").append(sm);
            if (smOffset != null && smOffset > 0) {
                builder.append(" col-sm-offset-").append(smOffset);
            }
            if (smPush != null && smPush > 0) {
                builder.append(" col-sm-push-").append(smPush);
            }
            if (smPull != null && smPull > 0) {
                builder.append(" col-sm-pull-").append(smPull);
            }
        }
        if (lg != null && lg > 0) {
            builder.append(" col-lg-").append(lg);
            if (lgOffset != null && lgOffset > 0) {
                builder.append(" col-lg-offset-").append(lgOffset);
            }
            if (lgPush != null && lgPush > 0) {
                builder.append(" col-lg-push-").append(lgPush);
            }
            if (lgPull != null && lgPull > 0) {
                builder.append(" col-lg-pull-").append(lgPull);
            }
        }
        this.set_class(builder.toString());
        //
        return super.doTagStart();
    }

    public Integer getMd() {
        return md;
    }

    public void setMd(Integer md) {
        this.md = md;
    }

    public Integer getMdOffset() {
        return mdOffset;
    }

    public void setMdOffset(Integer mdOffset) {
        this.mdOffset = mdOffset;
    }

    public Integer getMdPush() {
        return mdPush;
    }

    public void setMdPush(Integer mdPush) {
        this.mdPush = mdPush;
    }

    public Integer getMdPull() {
        return mdPull;
    }

    public void setMdPull(Integer mdPull) {
        this.mdPull = mdPull;
    }

    public Integer getXs() {
        return xs;
    }

    public void setXs(Integer xs) {
        this.xs = xs;
    }

    public Integer getXsOffset() {
        return xsOffset;
    }

    public void setXsOffset(Integer xsOffset) {
        this.xsOffset = xsOffset;
    }

    public Integer getXsPush() {
        return xsPush;
    }

    public void setXsPush(Integer xsPush) {
        this.xsPush = xsPush;
    }

    public Integer getXsPull() {
        return xsPull;
    }

    public void setXsPull(Integer xsPull) {
        this.xsPull = xsPull;
    }

    public Integer getSm() {
        return sm;
    }

    public void setSm(Integer sm) {
        this.sm = sm;
    }

    public Integer getSmOffset() {
        return smOffset;
    }

    public void setSmOffset(Integer smOffset) {
        this.smOffset = smOffset;
    }

    public Integer getSmPush() {
        return smPush;
    }

    public void setSmPush(Integer smPush) {
        this.smPush = smPush;
    }

    public Integer getSmPull() {
        return smPull;
    }

    public void setSmPull(Integer smPull) {
        this.smPull = smPull;
    }

    public Integer getLg() {
        return lg;
    }

    public void setLg(Integer lg) {
        this.lg = lg;
    }

    public Integer getLgOffset() {
        return lgOffset;
    }

    public void setLgOffset(Integer lgOffset) {
        this.lgOffset = lgOffset;
    }

    public Integer getLgPush() {
        return lgPush;
    }

    public void setLgPush(Integer lgPush) {
        this.lgPush = lgPush;
    }

    public Integer getLgPull() {
        return lgPull;
    }

    public void setLgPull(Integer lgPull) {
        this.lgPull = lgPull;
    }
}
