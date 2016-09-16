<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="divider" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="head" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 用于下拉菜单标签 --%>
<%@ attribute name="dropdown" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%-- 用于分页标签 --%>
<%@ attribute name="previous" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="next" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="tabId" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="modalId" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="active" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${divider}">
        <li class="divider"></li>
    </c:when><c:when test="${head}">
        <li class="dropdown-header"><jsp:doBody/></li>
    </c:when><c:when test="${dropdown}">
        <bs:elements _tag="li" _id="${_id}" _style="${_style}" _attrs="${_attrs}">
            <jsp:attribute name="_class">dropdown<c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
            <jsp:body>
                <a class="dropdown-toggle" data-toggle="dropdown" href="${func:defaultIfBlank(href, '#')}">${title}</a>
                <ul class="dropdown-menu"><jsp:doBody/></ul>
            </jsp:body>
        </bs:elements>
    </c:when><c:otherwise>
        <bs:elements _tag="li" _id="${_id}" _style="${_style}" _attrs="${_attrs}">
            <jsp:attribute name="_class">
                ${_class}<c:if test="${disabled}"> disabled</c:if><c:if test="${active}"> active</c:if><c:if test="${previous}"> previous</c:if><c:if test="${next}"> next</c:if>
            </jsp:attribute>
            <jsp:body><a href="${func:defaultIfBlank(href, '#')}"<c:if test="${not empty tabId}"> data-toggle="tab" data-target="#${tabId}"</c:if><c:if test="${not empty modalId}"> data-toggle="modal" data-target="#${modalId}"</c:if>><jsp:doBody/></a></jsp:body>
        </bs:elements>
    </c:otherwise>
</c:choose>