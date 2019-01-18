/*
 * Copyright 2007-2019 the original author or authors.
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
;$(function () {

    "use strict";

    window.__notifyShow = function (msg, type) {
        if (msg) {
            $.bootstrapGrowl(msg, {
                ele: 'body',
                type: type,
                offset: {from: 'top', amount: 20},
                align: 'center', //
                width: 'auto',
                delay: 4000,
                allow_dismiss: true,
                stackup_spacing: 10
            });
        }
    };
    window.__overlayShow = function (hide) {
        if (hide) {
            $.LoadingOverlay("hide");
        } else {
            $.LoadingOverlay("show");
        }
    };
    window.__confirmShow = function (options) {

        var defaults = {
            title: '警告！',
            content: '确认继续吗？',
            icon: 'fa fa-warning',
            type: 'red',
            typeAnimated: true,
            ok: function () {
            },
            cancel: function () {
            }
        };

        var opts = $.extend({}, defaults, options);

        $.confirm({
            title: opts.title,
            content: opts.content,
            icon: opts.icon,
            type: opts.type,
            typeAnimated: opts.typeAnimated,
            buttons: {
                'ok': {
                    text: '确认',
                    btnClass: 'btn-' + opts.type,
                    action: opts.ok
                },
                'cancel': {
                    text: '取消',
                    action: opts.cancel
                },
            }
        });
    };
    window.__browserVersion = function (userAgent) {
        if (userAgent) {
            var _brower = {};
            var _ua = userAgent.toLowerCase();
            var s;
            (s = _ua.match(/rv:([\d.]+)\) like gecko/)) ? _brower.ie = s[1] :
                (s = _ua.match(/msie ([\d\\.]+)/)) ? _brower.ie = s[1] :
                    (s = _ua.match(/edge\/([\d\\.]+)/)) ? _brower.edge = s[1] :
                        (s = _ua.match(/firefox\/([\d\\.]+)/)) ? _brower.firefox = s[1] :
                            (s = _ua.match(/(?:opera|opr).([\d\\.]+)/)) ? _brower.opera = s[1] :
                                (s = _ua.match(/chrome\/([\d\\.]+)/)) ? _brower.chrome = s[1] :
                                    (s = _ua.match(/version\/([\d\\.]+).*safari/)) ? _brower.safari = s[1] : 0;
            if (_brower.ie) return ('IE: ' + _brower.ie);
            if (_brower.edge) return ('EDGE: ' + _brower.edge);
            if (_brower.firefox) return ('Firefox: ' + _brower.firefox);
            if (_brower.chrome) return ('Chrome: ' + _brower.chrome);
            if (_brower.opera) return ('Opera: ' + _brower.opera);
            if (_brower.safari) return ('Safari: ' + _brower.safari);
        }
        return 'Unknown';
    };

    //
    $('[data-tip="tooltip"]').tooltip();
    $('[data-popover="popover"]').popover();

    //
    if ($().draggable) {
        $('[data-draggable="draggable"]').each(function (index, domEle) {
            $(domEle).draggable({
                tolerance: "pointer",
                handle: ".modal-header"
            })
        });
    }

    //
    if ($().sortable) {
        $('[data-sortable="sortable"]').each(function (index, domEle) {
            $(domEle).sortable({
                connectWith: ".panel.panel-sortable",
                items: ".panel.panel-sortable",
                opacity: 0.8,
                handle: '.panel-heading',
                coneHelperSize: true,
                placeholder: 'panel-sortable-placeholder',
                tolerance: "pointer",
                forcePlaceholderSize: !0,
                helper: "clone",
                cancel: ".panel-sortable-empty",
                revert: 250,
                update: function (b, c) {
                    if (c.item.prev().hasClass("panel-sortable-empty")) {
                        c.item.prev().before(c.item);
                    }
                }
            });
        });
    }

    //
    function __getAttr(tableTarget, attrName, defaultValue) {
        var _attr = eval(tableTarget.attr(attrName));
        return _attr === undefined ? (defaultValue !== undefined ? defaultValue : true) : _attr;
    }

    //
    if ($().DataTable) {
        $('[data-datatables="datatables"]').each(function (index, domEle) {
            var _tables = $(domEle);
            var _options = {
                info: __getAttr(_tables, 'data-dt-info'),
                lengthChange: __getAttr(_tables, 'data-dt-lengthChange'),
                ordering: __getAttr(_tables, 'data-dt-ordering'),
                paging: __getAttr(_tables, 'data-dt-paging'),
                processing: __getAttr(_tables, 'data-dt-processing', false),
                scrollX: __getAttr(_tables, 'data-dt-scrollX', false),
                scrollY: __getAttr(_tables, 'data-dt-scrollY', false),
                searching: __getAttr(_tables, 'data-dt-searching'),
                serverSide: __getAttr(_tables, 'data-dt-serverSide', false),
                stateSave: __getAttr(_tables, 'data-dt-stateSave'),
                autoWidth: __getAttr(_tables, 'data-dt-autoWidth'),
                deferRender: __getAttr(_tables, 'data-dt-deferRender', false),
                language: {
                    url: "//cdn.datatables.net/plug-ins/1.10.12/i18n/Chinese.json"
                }
            };
            _tables.DataTable(_options);
            // 用于解决resize时表头与列不对齐的问题
            $(window).resize(function () {
                _tables.dataTable().fnDraw(false);
            });
        });
    }

    //
    if ($().treegrid) {
        $('[data-treegrid="treegrid"]').each(function (index, domEle) {
            $(domEle).treegrid();
        });
    }

    //
    if ($().summernote) {
        $('.summernote').each(function (index, domEle) {
            $(domEle).summernote({
                // toolbar: [
                //     ['style', ['bold', 'italic', 'underline', 'clear']],
                //     ['font', ['strikethrough', 'superscript', 'subscript']],
                //     ['fontsize', ['fontname', 'fontsize']],
                //     ['color', ['color']],
                //     ['para', ['ul', 'ol', 'paragraph']],
                //     ['height', ['height']],
                //     ['misc', ['fullscreen', 'codeview', 'help']]
                // ],
                height: 200,
                lang: 'zh-CN',
                placeholder: $(domEle).attr('data-placeholder')
            });
        })
    }
});

(function ($) {

    "use strict";

    /**
     * Ajax请求结果通用错误处理
     *
     * @param result 响应结果对象
     * @param messageShow 消息提示组件对象
     * @param callback 响应结果无错误时的回调接口
     * @param template 自定义字符串模版
     * @private
     */
    function __parseResultErrorMsg(result, messageShow, callback, template) {
        if (result) {
            if (result.ret !== 0) {
                if (!template) {
                    template = "{0}<br>";
                }
                var _messages = "";
                if (result.ret === -1 && result.data) {
                    $.each(result.data, function (item) {
                        _messages = __format(template, result.data[item]);
                    });
                } else {
                    _messages = result.msg;
                }
                if (_messages) {
                    messageShow.show(_messages);
                }
                if (callback && callback instanceof Function) {
                    callback(result);
                }
            } else if (callback && callback instanceof Function) {
                callback(result);
            }
        }
    }

    /**
     * 字符串模板参数替换
     *
     * @param str 模板字符串
     * @param text 替换参数
     * @returns {XML|void|string}
     * @private
     */
    function __format(str, text) {
        var args = arguments;
        return str.replace(/\{(\d+)\}/g,
            function (m, i) {
                return args[parseInt(i) + 1];
            });
    }

    /**
     * 请求统一发送方法
     *
     * @param options
     */
    $.requestSender = function (options) {

        var defaults = {
            url: "",
            type: "POST",
            global: false,
            accepts: null,
            async: null,
            cache: null,
            timeout: 0,
            data: null,
            traditional: true, // 防止深度序列化
            processData: null,
            contentType: null,
            dataType: "json",
            dataFilter: null,
            headers: null,
            mimeType: null,
            password: null,
            xhrFields: null,
            jsonp: null,
            jsonpCallback: null,
            beforeSend: null,
            complete: null,
            success: null,
            error: null,
            scriptCharset: null,
            statusCode: null
            // statusCode: {
            //     404: function () {
            //         console.debug("404 Page Not Found.");
            //     }
            // }
        };

        var opts = {};

        $.each($.extend({}, defaults, options), function (name, value) {
            if (value) {
                opts[name] = value;
            }
        });

        function __beforeSend(XMLHttpRequest) {
            console.debug("__beforeSend:" + opts.url);
            return options.beforeSend ? options.beforeSend(XMLHttpRequest) : true;
        }

        function __complete(XMLHttpRequest, textStatus) {
            console.debug("__complete:" + opts.url + ", status:" + textStatus);
            if (options.complete) {
                options.complete(XMLHttpRequest, textStatus);
            }
        }

        function __success(data, textStatus, jqXHR) {
            console.debug("__success:" + opts.url + ", status:" + textStatus);
            if (options.success) {
                options.success(data, textStatus, jqXHR);
            }
        }

        function __error(XMLHttpRequest, textStatus, errorThrown) {
            console.debug("__error:" + opts.url + ", status:" + textStatus);
            if (options.error) {
                options.error(XMLHttpRequest, textStatus, errorThrown);
            }
        }

        opts.beforeSend = __beforeSend;
        opts.complete = __complete;
        opts.success = __success;
        opts.error = __error;

        $.ajax(opts);
    };

    /**
     * 消息提示组件
     *
     * @param options
     * @returns {{show: __show, clean: __clean}}
     */
    $.fn.messageShow = function (options) {

        var defaults = {
            // 消息模板
            tmpl: "<div class=\" alert alert-{%=(o.style ? o.style : 'danger')%} alert-dismissable\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>{% print(o.message, true);%}</div>",
            // 初始时默认显示文本
            defaultText: ""
        };

        var opts = $.extend({}, defaults, options);

        var __target = $(this);

        if (!opts.defaultText) {
            opts.defaultText = __target.attr("data-message-show");
        }
        __clean();

        /**
         * 显示消息
         *
         * @param msg 消息内容
         * @param style 样式, 默认danger, 可选:[danger|warning|info|success|primary]
         * @private
         */
        function __show(msg, style) {
            var _msg = {
                message: msg
            };
            if (style) {
                _msg.style = style;
            }
            __target.empty();
            __target.html(tmpl(opts.tmpl, _msg));
        }

        function __clean() {
            __target.empty();
            if (opts.defaultText) {
                __show(opts.defaultText, "warning");
            }
        }

        return {
            show: __show,
            clean: __clean
        }
    };

    /**
     * 图形验证码组件
     *
     * @param options
     * @returns {{refresh: __refreshImg}}
     */
    $.fn.captcha = function (options) {

        var defaults = {
            // 图片请求URL地址
            url: "captcha",
            // 验证码文本域Id或对象
            captchaField: 'input[name="captcha"]',
            // 创建时是否请求图片
            refresh: true,
            // 是否禁用
            disabled: false,
            // 验证码图片按钮Id或对象
            captchaBtn: "#_captchaImg",
            // 用于存放验证码HTML段的模板Id
            templateId: "_captcha_template",
            // 用于放置HTML的标签容器Id
            container: "#_captcha_container"
        };

        var opts = $.extend({}, defaults, options);

        var __target = $(this);

        var __flag = false;

        if (!opts.disabled) {
            if (opts.container && opts.captchaBtn) {
                __enabled();
            }
            //
            __target.on("click", __refreshImg);

            if (opts.refresh) {
                __refreshImg();
            }
        }

        function __refreshImg() {
            if (!opts.disabled) {
                var _v = "_v=" + Date.now();
                if (opts.url.indexOf("?") > 0) {
                    _v = "&" + _v;
                } else {
                    _v = "?" + _v;
                }
                __target.attr("src", opts.url + _v);
            }
        }

        function __clean() {
            if (!opts.disabled) {
                if (opts.captchaField) {
                    $(opts.captchaField).val('');
                }
            }
        }

        function __enabled() {
            if (!__flag && opts.templateId && opts.container) {
                opts.disabled = false;
                __flag = true;
                //
                var _content = tmpl(opts.templateId, {});
                $(opts.container).append(_content);
                //
                __target = $(opts.captchaBtn).on("click", __refreshImg);
                //
                if (opts.refresh) {
                    __refreshImg();
                }
            }
        }

        function __isEnabled() {
            return !opts.disabled;
        }

        return {
            refresh: __refreshImg,
            clean: __clean,
            enabled: __enabled,
            isEnabled: __isEnabled()
        }
    };

    /**
     * 短信或邮件验证码发送组件
     *
     * @param options
     */
    $.fn.captchaSender = function (options) {

        var defaults = {
            // 验证码类型：sms|mail
            type: "sms",
            // 验证码作用域
            scope: "passport",
            // 图片验证码请求URL地址
            captcha_url: null,
            // 手机号码或邮件地址文本域ID或对象
            targetField: null,
            // 消息提示组件
            messageShow: null,
            // 重发等待时间(秒)
            timeout: 120,
            // 等待提示语
            showText: "{0}秒后重发",
            // 手机号码或邮件地址格式错误时的提示信息
            formatErrorMsg: "数据格式不正确",
            //
            // 请求发送异常时的提示信息
            errorMsg: "验证码发送失败，请稍后重试",
            // 请求发送成功时的提示信息
            successMsg: "验证码已发送，请注意查收",
            // 回调方法, 格式: {error: function(...){...}, success:function(...){...}}
            callback: null
        };

        var opts = $.extend({}, defaults, options);

        if (!opts.captcha_url) {
            opts.captcha_url = "captcha?scope=" + opts.type;
        }

        var __timer;

        var __targetBtn = $(this);

        // 按钮原始文本内容
        var __btnOriginalText = __targetBtn.text();

        var __targetField = opts.targetField ? $(opts.targetField) : null;

        if (__targetField && opts.messageShow) {
            __targetBtn.on("click", __send).prop({disabled: __checkTarget()});
            __targetField.on("input", function (e) {
                __targetBtn.prop({disabled: __checkTarget()});
            })
        } else {
            console.debug("CaptchaSender init fail.")
        }

        $("#_captcha_modal_container").append(tmpl("_captcha_modal_template", {"type": opts.type}));

        var __messageShow = $('#_sendCaptchaMessage').messageShow();

        var __modal = $("#_sendCaptchaModal").modal({keyboard: false, backdrop: "static", show: false});

        var __captcha = $('#_captchaSendImg').captcha({
            url: opts.captcha_url,
            captchaField: '#_captcha_send_field',
            captchaBtn: "#_captchaSendImg",
            templateId: "_captcha_send_template",
            container: "#_send_captcha_container"
        });

        var __captchaField = $("#_captcha_send_field");

        __modal.on("shown.bs.modal", function (e) {
            __messageShow.clean();
            __captcha.clean();
            __captcha.refresh();
            __captchaField.focus();
        });

        function __checkTarget() {
            var _targetValue = __targetField.val();
            if (opts.type === "sms") {
                return !_targetValue || !(/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[0-9])|(18[0-9]))\d{8}$/.test(_targetValue));
            } else if (opts.type === "mail") {
                return !_targetValue || !(/^(?:\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,8}$)/.test(_targetValue));
            }
            return false;
        }

        function __reset() {
            if (__timer) {
                window.clearInterval(__timer);
                __targetBtn.text(__btnOriginalText).prop({disabled: __checkTarget()});
            }
        }

        function __send() {
            if (__checkTarget()) {
                opts.messageShow.show(opts.formatErrorMsg);
            } else {
                __modal.modal("show");
                //
                var _form = $("#_sendCaptchaForm");
                if (_form) {
                    _form[0].reset();
                    _form.validator({
                        delay: 500,
                        html: true,
                        disable: false,
                        focus: true
                    }).on("submit", function (e) {
                        if (!e.isDefaultPrevented()) {
                            e.preventDefault();
                            //
                            __targetBtn.prop({disabled: true});
                            //
                            var __time = opts.timeout ? opts.timeout : 120;
                            __timer = window.setInterval(function () {
                                __targetBtn.text(__format(opts.showText, __time));
                                if (__time < 1) {
                                    __reset();
                                }
                                __time--;
                            }, 1000);
                            //
                            var _data = {};
                            _data.captcha = __captchaField.val();
                            if (opts.scope) {
                                _data.scope = opts.scope;
                            }
                            if (opts.type === "sms") {
                                _data.mobile = __targetField.val();
                            } else if (opts.type === "mail") {
                                _data.email = __targetField.val();
                            }
                            //
                            $.requestSender({
                                url: __format(_form.attr('action'), opts.type),
                                data: _data,
                                error: function (XMLHttpRequest, textStatus, errorThrown) {
                                    __reset();
                                    if (opts.callback && opts.callback.error && opts.callback.error instanceof Function) {
                                        opts.callback.error(XMLHttpRequest, textStatus, errorThrown)
                                    } else if (opts.errorMsg) {
                                        __messageShow.show(opts.errorMsg);
                                    }
                                },
                                success: function (result, textStatus, jqXHR) {
                                    if (result) {
                                        if (result.ret !== 0) {
                                            __reset();
                                            if (result.ret === -50 || result.ret === -6) {
                                                if (opts.errorMsg) {
                                                    __messageShow.show(opts.errorMsg);
                                                }
                                            } else if (opts.callback && opts.callback.success && opts.callback.success instanceof Function) {
                                                opts.callback.success(result, textStatus, jqXHR)
                                            } else {
                                                __parseResultErrorMsg(result, __messageShow);
                                            }
                                            __captcha.clean();
                                            __captcha.refresh();
                                        } else if (opts.successMsg) {
                                            __modal.modal("hide");
                                            opts.messageShow.show(opts.successMsg, "info");
                                        }
                                    }
                                }
                            });
                        }
                    });
                }
            }
        }
    };

    /**
     * 表单处理器
     *
     * @param options
     * @returns {{reset: __reset, getFormData: (function(): *), validate: __validate}}
     */
    $.fn.submitter = function (options) {

        var defaults = {
            // 消息提示组件
            messageShow: null,
            timeout: 0,
            validator: {
                delay: 500,
                html: true,
                disable: false,
                focus: true
                // feedback: {
                //     success: 'glyphicon-ok',
                //     error: 'glyphicon-remove'
                // },
                // custom: {
                //     equals: function ($el) {
                //         var matchValue = $el.data("equals"); // foo
                //         if ($el.val() !== matchValue) {
                //             return "Hey, that's not valid! It's gotta be " + matchValue;
                //         }
                //     }
                // }
            },
            beforeSubmit: null,
            afterSubmit: null,
            error: null,
            success: null
        };

        var opts = $.extend({}, defaults, options);

        var __form = $(this);
        var __target = __form.validator(opts.validator).on("submit", __onSubmit);

        function __onSubmit(e) {
            if (!e.isDefaultPrevented()) {
                e.preventDefault();
                //
                if (opts.messageShow) {
                    opts.messageShow.clean();
                }
                //
                var _data = __form.serializeJSON();
                if (opts.beforeSubmit && opts.beforeSubmit instanceof Function) {
                    opts.beforeSubmit(_data);
                }
                $.requestSender({
                    url: __form.attr("action"),
                    type: __form.attr("method"),
                    timeout: opts.timeout,
                    data: _data,
                    success: function (data, textStatus, jqXHR) {
                        __parseResultErrorMsg(data, opts.messageShow, function () {
                            if (opts.success && opts.success instanceof Function) {
                                opts.success(data, textStatus, jqXHR);
                            }
                        });
                        if (opts.afterSubmit && opts.afterSubmit instanceof Function) {
                            opts.afterSubmit(textStatus, data, jqXHR);
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        if (opts.error && opts.error instanceof Function) {
                            opts.error(XMLHttpRequest, textStatus, errorThrown);
                        }
                        if (opts.afterSubmit && opts.afterSubmit instanceof Function) {
                            opts.afterSubmit(textStatus, errorThrown);
                        }
                    }
                });
            }
        }

        function __getFormData() {
            return __form.serializeJSON();
        }

        function __reset() {
            if (__form[0]) {
                __form[0].reset();
            }
            if (opts.messageShow) {
                opts.messageShow.clean();
            }
        }

        function __validate() {
            __target.validator('validate');
        }

        return {
            getFormData: __getFormData,
            reset: __reset,
            validate: __validate
        }
    };

    /**
     * 日期范围选择器封装
     *
     * @param options
     * @returns {{getDataRangePacker: (function(): jQuery)}}
     */
    $.fn.dateRangeWrapper = function (options) {

        var defaults = {
            "singleDatePicker": false,
            "showDropdowns": false,
            "showWeekNumbers": true,
            "showISOWeekNumbers": true,
            "timePicker": false,
            "timePicker24Hour": true,
            "timePickerSeconds": true,
            "autoApply": false,
            "maxSpan": {
                "days": 365
            },
            ranges: {
                '今天': [moment(), moment()],
                '昨天': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                '近7天': [moment().subtract(6, 'days'), moment()],
                '近30天': [moment().subtract(29, 'days'), moment()],
                '本月': [moment().startOf('month'), moment().endOf('month')],
                '上个月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " / ",
                "applyLabel": "应用",
                "cancelLabel": "取消",
                "fromLabel": "从",
                "toLabel": "到",
                "customRangeLabel": "自定义",
                "weekLabel": "周",
                "daysOfWeek": [
                    "日",
                    "一",
                    "二",
                    "三",
                    "四",
                    "五",
                    "六"
                ],
                "monthNames": [
                    "一月",
                    "二月",
                    "三月",
                    "四月",
                    "五月",
                    "六月",
                    "七月",
                    "八月",
                    "九月",
                    "十月",
                    "十一月",
                    "十二月"
                ],
                "firstDay": 1
            },
            "alwaysShowCalendars": true,
            "startDate": moment().startOf('month'),
            "endDate": moment().endOf('month'),
            "opens": "auto"
        };

        var opts = $.extend({}, defaults, options);

        var __dateRangePicker = $(this).daterangepicker(opts, function (start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });

        return {
            getDataRangePacker: function () {
                return __dateRangePicker;
            }
        }
    };

    /**
     * 表单包装器
     *
     * @param options
     * @returns {{submit: __submit, getForm: (function(): (*|jQuery|HTMLElement)), getMessageShow: (function(): *), setFormData: __setFormData, reset: __reset, getFormSubmitter: (function(): (jQuery|{reset: __reset, getFormData: (function(): *), validate: __validate}))}}
     */
    $.fn.formWrapper = function (options) {

        var defaults = {
            beforeSubmit: function (data) {
            },
            afterSubmit: function (textStatus, data) {
            },
            onReset: function (formEl, formSubmitter) {
            },
            callback: function (result) {
            }
        };

        var opts = $.extend({}, defaults, options);

        var __formWrapperEl = $(this);
        var __messageShow, __messageShowEl = $('.messageShow', __formWrapperEl);
        if (__messageShowEl.length > 0) {
            __messageShow = __messageShowEl.messageShow();
        }
        var __formSubmitBtn = $('button[type="submit"]', __formWrapperEl);
        var __searchFormSubmitter = __formWrapperEl.submitter({
            messageShow: __messageShow,
            beforeSubmit: function (data) {
                __formSubmitBtn = __formSubmitBtn.button("loading");
                if (opts.beforeSubmit) {
                    opts.beforeSubmit(data);
                }
            },
            afterSubmit: function (textStatus, data) {
                __formSubmitBtn.button("reset");
                if (opts.afterSubmit) {
                    opts.afterSubmit(textStatus, data);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                __formSubmitBtn.button("complete");
            },
            success: function (result) {
                __formSubmitBtn.button("complete");
                if (opts.callback) {
                    opts.callback(result);
                }
            }
        });
        var __formResetBtn = $('button[type="reset"]', __formWrapperEl);
        if (__formResetBtn.length > 0 && opts.onReset) {
            __formResetBtn.on('click', function (e) {
                if (!e.isDefaultPrevented()) {
                    e.preventDefault();
                    __searchFormSubmitter.reset();
                    opts.onReset(__formWrapperEl, __searchFormSubmitter);
                }
            });
        }

        function __getForm() {
            return __formWrapperEl;
        }

        function __setFormData(formData) {
            if (formData) {
                $.each(formData, function (key, value) {
                    var _formField = __formWrapperEl.find('[name=' + key + ']');
                    if ($.type(_formField[0]) !== "undefined") {
                        var _fieldTagName = _formField[0].tagName.toLowerCase();
                        if (_fieldTagName === "input") {
                            if (_formField.attr("type") === "radio") {
                                $('input:radio[name="' + key + '"]', __formWrapperEl).attr("checked", false);
                                $('input:radio[name="' + key + '"][value="' + value + '"]', __formWrapperEl).attr("checked", true);
                            } else if (_formField.attr("type") === "checkbox") {
                                $('input:checkbox[name="' + key + '"]', __formWrapperEl).attr("checked", false);
                                if (value instanceof Array) {
                                    $.each(value, function (idx, item) {
                                        $('input:checkbox[name="' + key + '"][value="' + item + '"]', __formWrapperEl).attr("checked", true);
                                    });
                                } else {
                                    $('input:checkbox[name="' + key + '"][value="' + value + '"]', __formWrapperEl).attr("checked", true);
                                }
                            } else {
                                _formField.attr('value', value);
                            }
                        } else if (_fieldTagName === "select") {
                            _formField.val(value);
                        } else if (_fieldTagName === "textarea") {
                            _formField.text(value);
                        } else {
                            console.warn("Failure to assign value to: ", key, value);
                        }
                    }
                });
            }
        }

        function __submit() {
            if (__formSubmitBtn) {
                __formSubmitBtn.trigger('click');
            }
        }

        function __reset() {
            __searchFormSubmitter.reset();
            if (__formResetBtn.length > 0) {
                __formResetBtn.trigger('click');
            }
        }

        function __getFormSubmitter() {
            return __searchFormSubmitter;
        }

        function __getMessageShow() {
            return __messageShow;
        }

        return {
            getForm: __getForm,
            setFormData: __setFormData,
            submit: __submit,
            reset: __reset,
            getFormSubmitter: __getFormSubmitter,
            getMessageShow: __getMessageShow
        }
    };

    /**
     * 标签面板切换器
     *
     * @param options
     * @returns {{getFormWrapper: (function(*): *), show: show, reset: reset}}
     */
    $.fn.tabSwitcher = function (options) {

        var defaults = {
            tabs: [{
                id: '',
                form: {
                    beforeSubmit: function (data) {
                    },
                    afterSubmit: function (textStatus, data) {
                    },
                    onReset: function (formEl, formSubmitter) {
                    },
                    callback: function (result) {
                    }
                },
                onShow: function (tabContent, formWrapper) {
                },
            }]
        };

        var opts = $.extend({}, defaults, options);

        var __tabsEl = $(this);

        var __formWrappers = {};
        var __tabOnShow = {};

        if (opts.tabs && opts.tabs.length > 0) {
            for (var _idx = 0; _idx < opts.tabs.length; _idx++) {
                var _item = opts.tabs[_idx];
                if (_item.id) {
                    if (_item.form) {
                        var _formEl = $('#' + _item.id + ' form');
                        if (_formEl.length > 0) {
                            __formWrappers[_item.id] = _formEl.formWrapper({
                                beforeSubmit: _item.form.beforeSubmit ? _item.form.beforeSubmit : null,
                                afterSubmit: _item.form.afterSubmit ? _item.form.afterSubmit : null,
                                onReset: _item.form.onReset ? _item.form.onReset : null,
                                callback: _item.form.callback ? _item.form.callback : null
                            });
                        }
                    }
                    if (_item.onShow) {
                        __tabOnShow[_item.id] = {
                            show: _item.onShow,
                            content: $('#' + _item.id)
                        };
                    }
                }
            }
        }

        function __findTab(tabId) {
            return $('a[data-target="#' + tabId + '"]', __tabsEl);
        }

        return {
            show: function (tabId) {
                var _tab = __findTab(tabId);
                if (_tab.length > 0) {
                    if (__tabOnShow[tabId]) {
                        __tabOnShow[tabId].show(__tabOnShow[tabId].content, __formWrappers[tabId]);
                    }
                    _tab.tab('show');
                    $(window).trigger('resize');
                }
            },
            reset: function () {
                $.each(__formWrappers, function (key, val) {
                    val.reset();
                });
            },
            getFormWrapper: function (tabId) {
                return __formWrappers[tabId];
            }
        }
    };

    /**
     * 分页组件封装及扩展
     *
     * @param options
     * @returns {{getPaginator: (function(): *)}}
     */
    $.fn.paginator = function (options) {

        var defaults = {
            paginated: true,
            totalPages: 0,
            recordsTotal: 0,
            currentPage: 0,
            size: "normal",
            alignment: "center",
            numberOfPages: 5,
            change: function (page) {
            }
        };

        var opts = $.extend({}, defaults, options);

        var __paginationInfoEl = $('.paginationInfo', $(this));
        if (__paginationInfoEl.length > 0) {
            var _str = '<nav><ul class="pagination" style="margin-bottom: 0; margin-top: 0;">';
            if (opts.paginated && opts.totalPages) {
                _str += '<li class="disabled"><a href="#">第 ' + opts.currentPage + '/' + opts.totalPages + ' 页</a></li>';
            }
            __paginationInfoEl.html(_str + '<li class="disabled"><a href="#">总计录数: ' + opts.recordsTotal + '</a></li></ul></nav>');
        }

        var _paginator = null;
        if (opts.paginated && opts.totalPages) {
            _paginator = $('ul:last', $(this)).bootstrapPaginator({
                totalPages: opts.totalPages,
                recordsTotal: opts.recordsTotal,
                currentPage: opts.currentPage,
                size: opts.size,
                bootstrapMajorVersion: 3,
                useBootstrapTooltip: false,
                alignment: opts.alignment,
                numberOfPages: opts.numberOfPages,
                itemTexts: function (type, page, current) {
                    switch (type) {
                        case "first":
                            return "&laquo;";
                        case "prev":
                            return "&larr;";
                        case "next":
                            return "&rarr;";
                        case "last":
                            return "&raquo;";
                        case "page":
                            return page;
                    }
                },
                tooltipTitles: function (type, page, current) {
                    switch (type) {
                        case "first":
                            return "首页";
                        case "prev":
                            return "上一页";
                        case "next":
                            return "下一页";
                        case "last":
                            return "末页";
                        case "page":
                            return page;
                    }
                },
                itemContainerClass: function (type, page, current) {
                    return (page === current) ? "active" : "pointer-cursor";
                },
                onPageClicked: function (event, originalEvent, type, page) {
                    if (opts.change) {
                        var _pages = $(event.currentTarget).bootstrapPaginator("getPages");
                        if (_pages.current !== page) {
                            opts.change(page);
                        }
                    }
                }
            });
        }

        return {
            getPaginator: function () {
                return _paginator;
            }
        }
    };

    /**
     * DataTables组件封装及扩展
     *
     * @param options
     * @returns {{removeItem: removeItem, findItem: (function(*): *), getCurrentPageNumber: getCurrentPageNumber, getResult: (function()), selectedIds: (function(): Array), refresh: refresh, getDateTable: (function(): *), selectedItems: (function(): Array)}}
     */
    $.fn.tables = function (options) {

        var defaults = {
            url: '',
            type: 'get',
            tableOps: {},
            callback: {
                loaded: function (settings) {
                },
                operations: function (data, type, row, meta) {
                },
                beforeData: function (data) {
                },
                afterData: function (result) {
                },
            }
        };

        var opts = $.extend({}, defaults, options);

        var _result = {};

        var _tableEl = $(this);

        var _tableOpts = $.extend({}, {
            serverSide: false,
            processing: true,
            lengthChange: false,
            searching: false,
            ordering: false,
            autoWidth: false,
            paging: false,
            info: false,
            data: [],
            columns: [],
            columnDefs: [],
            language: {
                zeroRecords: "没有找到记录",
                processing: "正在加载数据..."
            }
        }, opts.tableOps);
        //
        if (opts.url) {
            _tableOpts.ajax = {
                url: opts.url,
                type: opts.type,
                data: function (data) {
                    if (opts.callback && opts.callback.beforeData) {
                        opts.callback.beforeData(data);
                    }
                },
                dataSrc: function (result) {
                    _result = result;
                    if (opts.callback && opts.callback.afterData) {
                        opts.callback.afterData(result);
                    }
                    if (result.data && result.data.resultData) {
                        return result.data.resultData;
                    }
                    return [];
                }
            }
        }
        //
        var _templateOpts = "<div class=\"btn-group btn-group-sm\">\n" +
            "{% for (var i = 0; i < o.operations.length; i++) { %}\n" +
            "    {% if (i < 2) { %}\n" +
            "        <button class=\"btn btn-{%=(o.operations[i].type ? o.operations[i].type : 'default')%}\" type=\"button\" title=\"{%=o.operations[i].name%}\" data-operations=\"operations\" data-operation-fn=\"{%=o.operations[i].fn%}\" data-operation-param=\"{%=o.operations[i].param%}\"><i class=\"fa fa-{%=o.operations[i].icon ? o.operations[i].icon : 'circle-o'%}\"></i></button>\n" +
            "        {% if (o.operations.length > 2 && i == 1) { %}\n" +
            "            <button class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" type=\"button\"><span class=\"caret\"></span></button>\n" +
            "            <div class=\"dropdown-menu pull-right\">\n" +
            "        {% } %}\n" +
            "    {% } else { %}\n" +
            "        {% if (o.operations[i].name == '-') { %}<li class=\"divider\"></li>{% } else { %}<li><a href=\"#\" data-operations=\"operations\" data-operation-fn=\"{%=o.operations[i].fn%}\" data-operation-param=\"{%=o.operations[i].param%}\"><i class=\"fa fa-{%=o.operations[i].icon ? o.operations[i].icon : 'circle-o'%}\"></i> {%=o.operations[i].name%}</a></li>{% } %}\n" +
            "    {% } %}\n" +
            "{% } %}\n" +
            "{% if (o.operations.length > 2) { %}</div>{% } %}\n" +
            "</div>";
        // 数据第1列为复选组件
        _tableOpts.columns[0] = {
            'data': _tableOpts.columns[0].data,
            'title': '<input type="checkbox" name="cb-check-all">',
            'className': "td-checkbox",
            'width': "15px",
            "render": function (data, type, row, meta) {
                return '<input type="checkbox">';
            }
        };
        var _columnIdx = _tableOpts.columns.length;
        if (_columnIdx && _columnIdx > 1) {
            _tableOpts.columnDefs.push({
                'targets': _columnIdx,
                'width': "95px",
                "render": function (data, type, row, meta) {
                    return tmpl(_templateOpts, {
                        operations: opts.callback.operations(data, type, row, meta)
                    });
                }
            });
            _tableOpts.columns[_columnIdx] = {
                data: null,
                title: "操作"
            };
        }
        var _$tables = _tableEl.DataTable(_tableOpts);
        _$tables.on("draw", function (settings) {
            $(_$tables.containers()).attr("style", "margin-bottom: 100px!important;");
            //
            $(":checkbox[name='cb-check-all']", _tableEl).prop('checked', false);
            //
            $('[data-operations="operations"]').each(function (index, domEle) {
                var _item = $(domEle);
                _item.unbind().on('click', function () {
                    var _param = _item.attr('data-operation-param');
                    eval('__on' + _item.attr('data-operation-fn') + (_param ? '(\"' + _param + '\")' : '()'));
                });
            });
            if (opts.callback && opts.callback.loaded) {
                opts.callback.loaded(settings);
            }
        }).on("change", ":checkbox", function () {
            if ($(this).is("[name='cb-check-all']")) {
                $(":checkbox", _tableEl).prop("checked", $(this).prop("checked"));
            } else {
                var checkbox = $("tbody :checkbox", _tableEl);
                $(":checkbox[name='cb-check-all']", _tableEl).prop('checked', checkbox.length === checkbox.filter(':checked').length);
            }
        }).on("click", ".td-checkbox", function (event) {
            !$(event.target).is(":checkbox") && $(":checkbox", this).trigger("click");
        });
        $(window).resize(function () {
            _tableEl.dataTable().fnDraw(false);
        });

        return {
            /**
             * 返回本次Ajax查询的结果集对象
             */
            getResult: function () {
                return _result;
            },

            /**
             * 返回当前结果集页码
             *
             * @returns {*}
             */
            getCurrentPageNumber: function () {
                if (_result && _result.data) {
                    return _result.data.pageNumber;
                }
                return 0;
            },

            /**
             * 返回DataTables对象
             * @returns {*}
             */
            getDateTable: function () {
                return _$tables;
            },

            /**
             * 返回当前选中记录的Id集合
             * @returns {Array}
             */
            selectedIds: function () {
                var _ids = [];
                $("tbody :checkbox:checked", _tableEl).each(function (idx) {
                    _ids.push(_$tables.row($(this).closest('tr')).data().id);
                });
                return _ids;
            },

            /**
             * 返回当前选中记录的数据对象集合
             * @returns {Array}
             */
            selectedItems: function () {
                var _items = [];
                $("tbody :checkbox:checked", _tableEl).each(function (idx) {
                    _items.push(_$tables.row($(this).closest('tr')).data());
                });
                return _items;
            },

            findItem: function (id) {
                var _item = null;
                if (_result && _result.data && _result.data.resultData) {
                    for (var _idx = 0; _idx < _result.data.resultData.length; _idx++) {
                        if (_result.data.resultData[_idx].id === id) {
                            _item = _result.data.resultData[_idx];
                            break;
                        }
                    }
                }
                return _item;
            },

            removeItem: function (id) {
                if (_result && _result.data && _result.data.resultData) {
                    for (var _idx = 0; _idx < _result.data.resultData.length; _idx++) {
                        if (_result.data.resultData[_idx].id === id) {
                            _result.data.resultData.splice(_idx, 1);
                            break;
                        }
                    }
                }
            },

            /**
             * 刷新数据并重绘表格
             */
            refresh: function (data) {
                if (data && data.data) {
                    _result = data;
                    if (opts.callback && opts.callback.afterData) {
                        opts.callback.afterData(data);
                    }
                }
                if (_result && _result.data) {
                    _$tables.clear().rows.add(_result.data.resultData).draw();
                }
            }
        }
    };

    $.fn.navigation = function (options) {

        var defaults = {
            searchable: false,
            template: '<ul class="sidebar-menu" data-widget="tree">' +
                '    {% for (var _idx = 0; _idx < o.items.length; _idx++) { %}' +
                '        {% if (o.items[_idx].type && o.items[_idx].type == \'header\') { %}' +
                '            <li class="header">{%=o.items[_idx].title%}</li>' +
                '        {% } else { %}' +
                '            <li{% if (o.items[_idx].items && o.items[_idx].items.length > 0) { %} class="treeview"{% } %}>' +
                '                <a href="{%=(o.items[_idx].href ? o.items[_idx].href : \'#\')%}">' +
                '                    <i class="fa fa-{%=(o.items[_idx].icon ? o.items[_idx].icon : \'circle-o\')%}"></i>' +
                '                    <span>{%=o.items[_idx].title%}</span>' +
                '                    <span class="pull-right-container">' +
                '                        {% if (o.items[_idx].labels && o.items[_idx].labels.length > 0) { %}' +
                '                            {% for (var _itemIdx = 0; _itemIdx < o.items[_idx].labels.length && _itemIdx < 3; _itemIdx++) { %}' +
                '                                <small class="label pull-right bg-{%=o.items[_idx].labels[_itemIdx].color%}">{%=o.items[_idx].labels[_itemIdx].text%}</small>' +
                '                            {% } %}' +
                '                        {% } else { %}' +
                '                           {% if (o.items[_idx].items && o.items[_idx].items.length > 0) { %}' +
                '                            <i class="fa fa-angle-left pull-right"></i>' +
                '                        {% }} %}' +
                '                    </span>' +
                '                </a>' +
                '                {% if (o.items[_idx].items && o.items[_idx].items.length > 0) { %}' +
                '                    <ul class="treeview-menu">' +
                '                        {% for (var _itemIdx = 0; _itemIdx < o.items[_idx].items.length; _itemIdx++) { %}' +
                '                            {% if (o.items[_idx].items[_itemIdx].items && o.items[_idx].items[_itemIdx].items.length > 0) { %}' +
                '                                <li class="treeview">' +
                '                                    <a href="{%=(o.items[_idx].items[_itemIdx] ? o.items[_idx].items[_itemIdx].href : \'#\')%}">' +
                '                                        <i class="fa fa-{%=(o.items[_idx].items[_itemIdx].icon ? o.items[_idx].items[_itemIdx].icon : \'circle-o\')%}"></i>' +
                '                                        <span>{%=o.items[_idx].items[_itemIdx].title%}</span>' +
                '                                        <span class="pull-right-container">' +
                '                                            {% if (o.items[_idx].items[_itemIdx].labels && o.items[_idx].items[_itemIdx].labels.length > 0) { %}' +
                '                                                {% for (var _labelIdx = 0; _labelIdx < o.items[_idx].items[_itemIdx].labels.length && _labelIdx < 3; _labelIdx++) { %}' +
                '                                                    <small class="label pull-right bg-{%=o.items[_idx].items[_itemIdx].labels[_labelIdx].color%}">{%=o.items[_idx].items[_itemIdx].labels[_labelIdx].text%}</small>' +
                '                                                {% } %}' +
                '                                            {% } else { %}' +
                '                                                {% if (o.items[_idx].items && o.items[_idx].items.length > 0) { %}' +
                '                                                <i class="fa fa-angle-left pull-right"></i>' +
                '                                                {% } %}' +
                '                                            {% } %}' +
                '                                        </span>' +
                '                                    </a>' +
                '                                    <ul class="treeview-menu">' +
                '                                        {% for (var _subItemIdx = 0; _subItemIdx < o.items[_idx].items[_itemIdx].items.length; _subItemIdx++) { %}' +
                '                                            <li><a href="{%=(o.items[_idx].items[_itemIdx].items[_subItemIdx] ? o.items[_idx].items[_itemIdx].items[_subItemIdx].href : \'#\')%}">' +
                '                                                <i class="fa fa-{%=(o.items[_idx].items[_itemIdx].items[_subItemIdx].icon ? o.items[_idx].items[_itemIdx].items[_subItemIdx].icon : \'circle-o\')%}"></i>' +
                '                                                <span>{%=o.items[_idx].items[_itemIdx].items[_subItemIdx].title%}</span>' +
                '                                            </a></li>' +
                '                                        {% } %}' +
                '                                    </ul>' +
                '                                </li>' +
                '                            {% } else { %}' +
                '                                <li><a href="{%=(o.items[_idx].items[_itemIdx] ? o.items[_idx].items[_itemIdx].href : \'#\')%}">' +
                '                                    <i class="fa fa-{%=(o.items[_idx].items[_itemIdx].icon ? o.items[_idx].items[_itemIdx].icon : \'circle-o\')%}"></i>' +
                '                                    <span>{%=o.items[_idx].items[_itemIdx].title%}</span>' +
                '                                    {% if (o.items[_idx].items[_itemIdx].labels && o.items[_idx].items[_itemIdx].labels.length > 0) { %}' +
                '                                        <span class="pull-right-container">' +
                '                                            {% for (var _labelIdx = 0; _itemIdx < o.items[_idx].items[_itemIdx].labels.length && _itemIdx < 3; _itemIdx++) { %}' +
                '                                                <small class="label pull-right bg-{%=o.items[_idx].items[_itemIdx].labels[_labelIdx].color%}">{%=o.items[_idx].items[_itemIdx].labels[_labelIdx].text%}</small>' +
                '                                            {% } %}' +
                '                                        </span>' +
                '                                    {% } %}' +
                '                                </a></li>' +
                '                            {% } %}' +
                '                        {% } %}' +
                '                    </ul>' +
                '                {% } %}' +
                '            </li>' +
                '        {% } %}' +
                '    {% } %}' +
                '</ul>',
            items: [
                {type: 'header', title: 'MAIN NAVIGATION'}, {
                    title: 'Multilevel',
                    icon: '',
                    href: '#',
                    labels: [{color: 'green', text: '8'}],
                    items: [
                        {
                            title: 'Level One',
                            icon: 'share',
                            href: '#'
                        },
                        {
                            title: 'Level One',
                            icon: 'share',
                            href: '#',
                            items: [
                                {title: 'Level Two', href: '#'},
                                {title: 'Level Two', href: '#'}
                            ]
                        }
                    ]
                }
            ]
        };

        var opts = $.extend({}, defaults, options);
        var _htmlStr = tmpl(opts.template, {items: opts.items});
        if (opts.searchable) {
            _htmlStr = "<form class=\"sidebar-form\">" +
                "    <div class=\"input-group\">\n" +
                "        <input type=\"text\" name=\"q\" class=\"form-control\" placeholder=\"搜索...\">" +
                "        <span class=\"input-group-btn\">" +
                "            <button type=\"submit\" name=\"search\" class=\"btn btn-flat\">" +
                "                <i class=\"fa fa-search\"></i>" +
                "            </button>" +
                "        </span>" +
                "    </div>" +
                "</form>" + _htmlStr;
        }
        $(this).append(_htmlStr);
        //
        if (opts.searchable) {
            $('.sidebar-form').on('submit', function (e) {
                e.preventDefault();
            });

            $('.sidebar-menu li.active').data('lte.pushmenu.active', true);

            $('.sidebar-form input[type="text"]').on('keyup', function () {
                var term = $(this).val().trim();
                var items = $('.sidebar-menu li');
                if (term.length === 0) {
                    items.each(function () {
                        $(this).show(0);
                        $(this).removeClass('active');
                        if ($(this).data('lte.pushmenu.active')) {
                            $(this).addClass('active');
                        }
                    });
                    return;
                }

                items.each(function () {
                    if ($(this).text().toLowerCase().indexOf(term.toLowerCase()) === -1) {
                        $(this).hide(0);
                        $(this).removeClass('pushmenu-search-found', false);

                        if ($(this).is('.treeview')) {
                            $(this).removeClass('active');
                        }
                    } else {
                        $(this).show(0);
                        $(this).addClass('pushmenu-search-found');

                        if ($(this).is('.treeview')) {
                            $(this).addClass('active');
                        }

                        var parent = $(this).parents('li').first();
                        if (parent.is('.treeview')) {
                            parent.show(0);
                        }
                    }

                    if ($(this).is('.header')) {
                        $(this).show();
                    }
                });

                $('.sidebar-menu li.pushmenu-search-found.treeview').each(function () {
                    $(this).find('.pushmenu-search-found').show(0);
                });
            });
        }
    }

})(jQuery);

(function ($) {

    "use strict";

    var __data = [{
        "name": "中国",
        "data": [{
            "name": "北京",
            "data": ["东城", "西城", "朝阳", "丰台", "石景山", "海淀", "门头沟", "房山", "通州", "顺义", "昌平", "大兴", "平谷", "怀柔", "密云", "延庆"]
        }, {
            "name": "上海",
            "data": ["崇明", "黄浦", "卢湾", "徐汇", "长宁", "静安", "普陀", "闸北", "虹口", "杨浦", "闵行", "宝山", "嘉定", "浦东", "金山", "松江", "青浦", "南汇", "奉贤"]
        }, {
            "name": "广东",
            "data": ["广州", "深圳", "珠海", "东莞", "中山", "佛山", "惠州", "河源", "潮州", "江门", "揭阳", "茂名", "梅州", "清远", "汕头", "汕尾", "韶关", "顺德", "阳江", "云浮", "湛江", "肇庆"]
        }, {
            "name": "江苏",
            "data": ["南京", "常熟", "常州", "海门", "淮安", "江都", "江阴", "昆山", "连云港", "南通", "启东", "沭阳", "宿迁", "苏州", "太仓", "泰州", "同里", "无锡", "徐州", "盐城", "扬州", "宜兴", "仪征", "张家港", "镇江", "周庄"]
        }, {
            "name": "浙江",
            "data": ["杭州", "安吉", "慈溪", "定海", "奉化", "海盐", "黄岩", "湖州", "嘉兴", "金华", "临安", "临海", "丽水", "宁波", "瓯海", "平湖", "千岛湖", "衢州", "江山", "瑞安", "绍兴", "嵊州", "台州", "温岭", "温州", "余姚", "舟山"]
        }, {
            "name": "重庆",
            "data": ["万州", "涪陵", "渝中", "大渡口", "江北", "沙坪坝", "九龙坡", "南岸", "北碚", "万盛", "双挢", "渝北", "巴南", "黔江", "长寿", "綦江", "潼南", "铜梁", "大足", "荣昌", "壁山", "梁平", "城口", "丰都", "垫江", "武隆", "忠县", "开县", "云阳", "奉节", "巫山", "巫溪", "石柱", "秀山", "酉阳", "彭水", "江津", "合川", "永川", "南川"]
        }, {
            "name": "安徽",
            "data": ["合肥", "安庆", "蚌埠", "亳州", "巢湖", "滁州", "阜阳", "贵池", "淮北", "淮化", "淮南", "黄山", "九华山", "六安", "马鞍山", "宿州", "铜陵", "屯溪", "芜湖", "宣城"]
        }, {
            "name": "福建",
            "data": ["福州", "厦门", "泉州", "漳州", "龙岩", "南平", "宁德", "莆田", "三明"]
        }, {
            "name": "甘肃",
            "data": ["兰州", "白银", "定西", "敦煌", "甘南", "金昌", "酒泉", "临夏", "平凉", "天水", "武都", "武威", "西峰", "张掖"]
        }, {
            "name": "广西",
            "data": ["南宁", "百色", "北海", "桂林", "防城港", "贵港", "河池", "贺州", "柳州", "钦州", "梧州", "玉林"]
        }, {
            "name": "贵州",
            "data": ["贵阳", "安顺", "毕节", "都匀", "凯里", "六盘水", "铜仁", "兴义", "玉屏", "遵义"]
        }, {
            "name": "海南",
            "data": ["海口", "儋县", "陵水", "琼海", "三亚", "通什", "万宁"]
        }, {
            "name": "河北",
            "data": ["石家庄", "保定", "北戴河", "沧州", "承德", "丰润", "邯郸", "衡水", "廊坊", "南戴河", "秦皇岛", "唐山", "新城", "邢台", "张家口"]
        }, {
            "name": "黑龙江",
            "data": ["哈尔滨", "北安", "大庆", "大兴安岭", "鹤岗", "黑河", "佳木斯", "鸡西", "牡丹江", "齐齐哈尔", "七台河", "双鸭山", "绥化", "伊春"]
        }, {
            "name": "河南",
            "data": ["郑州", "安阳", "鹤壁", "潢川", "焦作", "济源", "开封", "漯河", "洛阳", "南阳", "平顶山", "濮阳", "三门峡", "商丘", "新乡", "信阳", "许昌", "周口", "驻马店"]
        }, {
            "name": "湖北",
            "data": ["武汉", "恩施", "鄂州", "黄冈", "黄石", "荆门", "荆州", "潜江", "十堰", "随州", "武穴", "仙桃", "咸宁", "襄阳", "襄樊", "孝感", "宜昌"]
        }, {
            "name": "湖南",
            "data": ["长沙", "常德", "郴州", "衡阳", "怀化", "吉首", "娄底", "邵阳", "湘潭", "益阳", "岳阳", "永州", "张家界", "株洲"]
        }, {
            "name": "江西",
            "data": ["南昌", "抚州", "赣州", "吉安", "景德镇", "井冈山", "九江", "庐山", "萍乡", "上饶", "新余", "宜春", "鹰潭"]
        }, {
            "name": "吉林",
            "data": ["长春", "吉林", "白城", "白山", "珲春", "辽源", "梅河", "四平", "松原", "通化", "延吉"]
        }, {
            "name": "辽宁",
            "data": ["沈阳", "鞍山", "本溪", "朝阳", "大连", "丹东", "抚顺", "阜新", "葫芦岛", "锦州", "辽阳", "盘锦", "铁岭", "营口"]
        }, {
            "name": "内蒙古",
            "data": ["呼和浩特", "阿拉善盟", "包头", "赤峰", "东胜", "海拉尔", "集宁", "临河", "通辽", "乌海", "乌兰浩特", "锡林浩特"]
        }, {
            "name": "宁夏",
            "data": ["银川", "固源", "石嘴山", "吴忠"]
        }, {
            "name": "青海",
            "data": ["西宁", "德令哈", "格尔木", "共和", "海东", "海晏", "玛沁", "同仁", "玉树"]
        }, {
            "name": "山东",
            "data": ["济南", "滨州", "兖州", "德州", "东营", "菏泽", "济宁", "莱芜", "聊城", "临沂", "蓬莱", "青岛", "曲阜", "日照", "泰安", "潍坊", "威海", "烟台", "枣庄", "淄博"]
        }, {
            "name": "山西",
            "data": ["太原", "长治", "大同", "候马", "晋城", "离石", "临汾", "宁武", "朔州", "忻州", "阳泉", "榆次", "运城"]
        }, {
            "name": "陕西",
            "data": ["西安", "安康", "宝鸡", "汉中", "渭南", "商州", "绥德", "铜川", "咸阳", "延安", "榆林"]
        }, {
            "name": "四川",
            "data": ["成都", "巴中", "达川", "德阳", "都江堰", "峨眉山", "涪陵", "广安", "广元", "九寨沟", "康定", "乐山", "泸州", "马尔康", "绵阳", "眉山", "南充", "内江", "攀枝花", "遂宁", "汶川", "西昌", "雅安", "宜宾", "自贡", "资阳"]
        }, {
            "name": "天津",
            "data": ["天津", "和平", "东丽", "河东", "西青", "河西", "津南", "南开", "北辰", "河北", "武清", "红挢", "塘沽", "汉沽", "大港", "宁河", "静海", "宝坻", "蓟县"]
        }, {
            "name": "新疆",
            "data": ["乌鲁木齐", "阿克苏", "阿勒泰", "阿图什", "博乐", "昌吉", "东山", "哈密", "和田", "喀什", "克拉玛依", "库车", "库尔勒", "奎屯", "石河子", "塔城", "吐鲁番", "伊宁"]
        }, {
            "name": "西藏",
            "data": ["拉萨", "阿里", "昌都", "林芝", "那曲", "日喀则", "山南"]
        }, {
            "name": "云南",
            "data": ["昆明", "大理", "保山", "楚雄", "大理", "东川", "个旧", "景洪", "开远", "临沧", "丽江", "六库", "潞西", "曲靖", "思茅", "文山", "西双版纳", "玉溪", "中甸", "昭通"]
        }, {
            "name": "香港特别行政区",
            "data": ["香港", "九龙", "新界"]
        }, {
            "name": "澳门特别行政区",
            "data": ["澳门"]
        }, {
            "name": "台湾",
            "data": ["台北", "基隆", "台南", "台中", "高雄", "屏东", "南投", "云林", "新竹", "彰化", "苗栗", "嘉义", "花莲", "桃园", "宜兰", "台东", "金门", "马祖", "澎湖"]
        }]
    }, {
        "name": "海外",
        "data": [{
            "name": "美国",
            "data": ["美国"]
        }, {
            "name": "日本",
            "data": ["日本"]
        }, {
            "name": "英国",
            "data": ["英国"]
        }, {
            "name": "法国",
            "data": ["法国"]
        }, {
            "name": "德国",
            "data": ["德国"]
        }, {
            "name": "其它",
            "data": ["其它"]
        }]
    }];

    /**
     * 国家省市三级联动
     *
     * @param options
     */
    $.fn.multiSelect = function (options) {

        var defaults = {
            provinceField: "select[name=province]",
            cityField: "select[name=city]",
            defaultTitle: "",
            initValue: {
                country: '',
                province: '',
                city: ''
            }
        };

        var opts = $.extend({}, defaults, options);

        var _country = $(this);

        __init();

        function __init() {
            if (_country && _country.length > 0) {
                __appendOptions(_country, __data, true, opts.initValue.country);
                //
                var _province = $(opts.provinceField);
                if (_province && _province.length > 0) {
                    __appendOptions(_province, __getProvinceByName(opts.initValue.country), true, opts.initValue.province);
                    _country.on("change", function () {
                        __appendOptions(_province, __getProvinceByName(_country.val()), true).val("").change();
                    });
                    //
                    var _city = $(opts.cityField);
                    if (_city && _city.length > 0) {
                        __appendOptions(_city, __getCityByName(opts.initValue.country, opts.initValue.province), true, opts.initValue.city);
                        _province.on("change", function () {
                            __appendOptions(_city, __getCityByName(_country.val(), _province.val()), true).val("").change();
                        });
                    }
                }
            }
        }

        function __appendOptions(target, datas, showTitle, initValue) {
            if (target && target.length > 0) {
                target.empty();
                if (showTitle) {
                    var _title = target.attr("data-title");
                    if (!_title) {
                        _title = opts.defaultTitle;
                    }
                    target.append("<option value=''>" + _title + "</option>");
                }
                if (datas && datas.length > 0) {
                    for (var _idx = 0; _idx < datas.length; _idx++) {
                        var _name = datas[_idx].name;
                        if (!_name && datas instanceof Array) {
                            _name = datas[_idx];
                        }
                        target.append("<option value='" + _name + "' " + (_name === initValue ? 'selected="selected"' : '') + ">" + _name + "</option>");
                    }
                }
            }
            return target;
        }

        function __getProvinceByName(cName) {
            for (var _idx = 0; _idx < __data.length; _idx++) {
                var _item = __data[_idx];
                if (_item.name === cName) {
                    return _item.data;
                }
            }
            return null;
        }

        function __getCityByName(cName, pName) {
            var _data = __getProvinceByName(cName);
            if (_data && _data.length > 0) {
                for (var _i = 0; _i < _data.length; _i++) {
                    if (_data[_i].name === pName) {
                        return _data[_i].data;
                    }
                }
            }
            return null;
        }
    }

})(jQuery);