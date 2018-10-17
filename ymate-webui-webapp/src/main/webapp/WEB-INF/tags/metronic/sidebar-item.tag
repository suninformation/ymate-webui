<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 侧栏导航菜单项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%-- Attributes --%>
<%@ attribute name="heading" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="uppercase" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="group" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="start" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="last" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="ajaxify" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="ajaxifyStart" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="target" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="tip" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="placement" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="label" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="labelStyle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="labelRoundless" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="active" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="open" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="select" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:choose><c:when test="${heading}">
    <li class="heading">
        <h3<c:if test="${uppercase}"> class="uppercase"</c:if>>${title}</h3>
    </li>
</c:when>
<c:otherwise>
    <li class="<c:if test="${start}">start</c:if><c:if test="${last}"> last</c:if><c:if test="${active}"> active</c:if><c:if test="${open}"> open</c:if><c:if test="${not empty tip}"> tooltips</c:if>"<c:if test="${not empty tip}"> data-container="body" data-placement="${func:defaultIfBlank(placement, 'right')}" data-html="true" data-original-title="${tip}"</c:if>>
        <a href="${func:defaultIfBlank(href, '#')}"<c:if test="${ajaxify or disabled}"> class="<c:if test="${ajaxify}"> ajaxify<c:if test="${ajaxifyStart}"> start</c:if></c:if><c:if test="${disabled}"> disabled-link</c:if>"</c:if><c:if test="${not empty target}"> target="${target}"</c:if>>
            <c:if test="${not empty icon}"><i class="${icon}<c:if test="${disabled}"> disable-target</c:if>"></i> </c:if><c:if test='${not empty label}'> <span class="badge<c:if test="${labelRoundless}"> badge-roundless</c:if> badge-${func:defaultIfBlank(labelStyle, 'danger')}<c:if test="${disabled}"> disable-target</c:if>">${label}</span></c:if><span class="title<c:if test="${disabled}"> disable-target</c:if>">${title}</span><c:if test="${group}"><span class="arrow <c:if test="${open}"> open</c:if><c:if test="${disabled}"> disable-target</c:if>"></span><c:if test="${select}"><span class="selected"></span></c:if></c:if>
        </a>
        <c:if test="${group}"><ul class="sub-menu"><jsp:doBody/></ul></c:if>
    </li>
</c:otherwise></c:choose>