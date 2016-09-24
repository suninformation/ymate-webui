<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 按钮
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- circle: 圆角 --%>
<%@ attribute name="circle" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- iconBtn: 图标按钮--%>
<%@ attribute name="iconBtn" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="iconOnly" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="image" rtexprvalue="true" type="java.lang.String" %>
<%-- toggle: Single Toggle --%>
<%@ attribute name="toggle" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="active" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- loadingText: Loading State --%>
<%@ attribute name="loadingText" rtexprvalue="true" type="java.lang.String" %>

<%-- stripe: 条纹风格, 可选值: red|blue|green|yellow|purple|dark --%>
<%@ attribute name="stripe" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="hover" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- type: 当link!=true时默认为button，可选值：button|checkbox|radio --%>
<%@ attribute name="type" rtexprvalue="true" type="java.lang.String" %>
<%-- style: 指定按钮风格样式, 可选值: default|primary|success|warning|danger|icon-only --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="link" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="block" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="dropdown" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="collapseId" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="modalId" rtexprvalue="true" type="java.lang.String" %>

<%-- tip: 指定tooltip提示信息内容 --%>
<%@ attribute name="tip" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="placement" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="popover" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="content" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="navbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="mini" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:button type="${type}"
           style="${style}"
           link="${link}"
           href="${href}"
           block="${block}"
           disabled="${disabled}"
           dropdown="${dropdown}"
           mini="${mini}"
           small="${small}"
           large="${large}"
           _id="${_id}"
           _style="${_style}"
           navbar="${navbar}"
           right="${right}"
           left="${left}"
           collapseId="${collapseId}"
           modalId="${modalId}">
    <jsp:attribute name="tag"><c:if test="${not link and (type eq 'checkbox' or type eq 'radio')}">label</c:if></jsp:attribute>
    <jsp:attribute name="_class"><c:if test="${iconOnly}"> btn-icon-only</c:if><c:if test="${dropdown}">dropdown-toggle</c:if><c:if test="${iconBtn}"> icon-btn</c:if><c:if
            test="${not empty stripe}"><%=" "%>${stripe}-stripe</c:if><c:if test="${circle}"> btn-circle</c:if><c:if test="${active}"> active</c:if><c:if test="${not empty tip}"> tooltips</c:if><c:if test="${not empty popover}"> popovers</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:attribute name="_attrs"><c:if
            test="${dropdown and hover}">data-hover="dropdown" data-delay="1000" data-close-others="true"</c:if><c:if
            test="${toggle}"> data-toggle="button"</c:if><c:if test="${not empty loadingText}"> data-loading-text="${loadingText}"</c:if><c:if test="${not empty tip}"> data-container="body" data-placement="${func:defaultIfBlank(placement, 'auto')}" data-html="true" data-original-title="${tip}"</c:if><c:if test="${not empty popover}"><c:if test="${hover}"> data-trigger="hover"</c:if> data-container="body" data-placement="${func:defaultIfBlank(placement, 'auto')}" data-content="${content}" data-original-title="${popover}"</c:if><c:if
            test="${not empty _attrs}"><%=" "%>${_attrs}</c:if></jsp:attribute>
    <jsp:body>
        <c:if test="${type eq 'checkbox' or type eq 'radio'}"><input type="${type}" class="toggle"></c:if>
        <c:choose><c:when test='${not empty icon}'><i class="${icon}"></i> </c:when><c:when test='${not empty image}'><img src="${image}" alt=""> </c:when></c:choose>
        <c:choose><c:when test="${iconBtn}"><div><jsp:doBody/></div></c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose>
        <c:if test="${dropdown}">&nbsp;<i class="fa fa-angle-down"></i></c:if>
    </jsp:body>
</bs:button>