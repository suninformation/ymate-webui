<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 页面内容体
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="fullHeightContent" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scroller" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollerHeight" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="scrollerAlwaysVisible" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollerRailVisible" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollerRailColor" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="scrollerHandleColor" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="<c:choose><c:when test="${fullHeightContent}">full-height-content-body</c:when><c:otherwise>page-content-body</c:otherwise></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:choose>
        <c:when test="${scroller}">
            <div class="scroller" <c:if test="${scrollerHeight > 0}">style="height:${scrollerHeight}px"</c:if><c:if test="${scrollerAlwaysVisible}"> data-always-visible="1"</c:if><c:if test="${scrollerRailVisible}"> data-rail-visible="1"</c:if><c:if test="${not empty scrollerRailColor}"> data-rail-color="${scrollerRailColor}"</c:if><c:if test="${not empty scrollerHandleColor}"> data-handle-color="${scrollerHandleColor}"</c:if>>
                <jsp:doBody/>
            </div>
        </c:when>
        <c:otherwise><jsp:doBody/></c:otherwise>
    </c:choose>
</div>