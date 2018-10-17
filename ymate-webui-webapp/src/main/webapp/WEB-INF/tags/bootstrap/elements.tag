<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 基础元素标签
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="_tag" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_name" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_value" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_for" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_type" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_role" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_placeholder" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_multiple" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_readonly" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_target" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_src" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_dataSrc" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="_height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="_alt" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_rel" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_hiddenXS" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_hiddenSM" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_hiddenMD" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_hiddenLG" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_hiddenPrint" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_visibleXS" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_visibleSM" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_visibleMD" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_visibleLG" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="_visiblePrint" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_unclosed" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<${func:defaultIfBlank(_tag, 'div')} <c:if test="${not empty _id}"> id="${_id}"</c:if><c:if
        test="${not empty _name}"> name="${_name}"</c:if><c:if
        test="${not empty _value}"> value="${_value}"</c:if><c:if
        test="${not empty _for}"> for="${_for}"</c:if><c:if
        test="${not empty _type}"> type="${_type}"</c:if><c:if
        test="${not empty _role}"> type="${_role}"</c:if><c:if
        test="${not empty _placeholder}"> placeholder="${_placeholder}"</c:if><c:if
        test="${not empty _disabled}"> disabled</c:if><c:if
        test="${not empty _multiple}"> multiple</c:if><c:if
        test="${not empty _readonly}"> readonly</c:if><c:if
        test="${not empty _href}"> href="${_href}"</c:if><c:if
        test="${not empty _target}"> target="${_target}"</c:if><c:if
        test="${not empty _src}"> src="${_src}"</c:if><c:if
        test="${not empty _dataSrc}"> data-src="${_dataSrc}"</c:if><c:if
        test="${_width > 0}"> width="${_width}px"</c:if><c:if
        test="${_height > 0}"> height="${_height}px"</c:if><c:if
        test="${not empty _alt}"> alt="${_alt}"</c:if><c:if
        test="${not empty _rel}"> alt="${_rel}"</c:if><c:if
        test="${not empty _class}"> class="${_class}<c:if test="${_hiddenXS}"> hidden-xs</c:if><c:if
        test="${_hiddenSM}"> hidden-sm</c:if><c:if test="${_hiddenMD}"> hidden-md</c:if><c:if
        test="${_hiddenLG}"> hidden-lg</c:if><c:if test="${_hiddenPrint}"> hidden-print</c:if><c:if
        test="${_visibleXS}"> visible-xs</c:if><c:if test="${_visibleSM}"> visible-sm</c:if><c:if
        test="${_visibleMD}"> visible-md</c:if><c:if test="${_visibleLG}"> visible-lg</c:if><c:if
        test="${_visiblePrint}"> visible-print</c:if>"</c:if><c:if
        test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
<jsp:doBody/>
<c:if test="${!_unclosed}"></${func:defaultIfBlank(_tag, 'div')}></c:if>