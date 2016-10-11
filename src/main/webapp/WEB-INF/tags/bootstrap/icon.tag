<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 字体图标
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- fa: 指定style为Fontawesome Icons图标 --%>
<%@ attribute name="fa" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="fa1X" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fa2X" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fa3X" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fa4X" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fa5X" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="faStack" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faStackLarge" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faStack1X" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faStack2X" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faInverse" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="faW" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faBorder" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faLeft" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faRight" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faSpin" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faPulse" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faRotate90" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faRotate180" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faRotate270" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faFlipH" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="faFlipV" rtexprvalue="true" type="java.lang.Boolean" %>


<%-- style: 图标名称，请参考：http://getbootstrap.com/components/#glyphicons 或 http://fortawesome.github.io/Font-Awesome/icons/ --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="caret" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${caret}"><span class="caret<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if
            test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
    </c:if>></span></c:when>
    <c:when test="${faStack}"><span
            class="fa-stack<c:if test="${faStackLarge}"> fa-lg</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
            <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
    </c:if>><jsp:doBody/></span></c:when>
    <c:when test="${fa}"><i
            class="fa fa-${style}<c:choose><c:when test="${fa1X}"> fa-1x</c:when><c:when test="${fa2X}"> fa-2x</c:when><c:when test="${fa3X}"> fa-3x</c:when><c:when test="${fa4X}"> fa-4x</c:when><c:when test="${fa5X}"> fa-5x</c:when></c:choose><c:if test="${faW}"> fa-fw</c:if><c:if test="${faBorder}"> fa-border</c:if><c:choose><c:when test="${faLeft}"> fa-pull-left</c:when><c:when test="${faRight}"> fa-pull-right</c:when></c:choose><c:choose><c:when test="${faSpin}"> fa-spin</c:when><c:when test="${faPulse}"> fa-pulse</c:when></c:choose><c:choose><c:when test="${faRotate90}"> fa-rotate-90</c:when><c:when test="${faRotate180}"> fa-rotate-180</c:when><c:when test="${faRotate270}"> fa-rotate-270</c:when><c:when test="${faFlipH}"> fa-flip-horizontal</c:when><c:when test="${faFlipV}"> fa-flip-vertical</c:when></c:choose><c:choose><c:when test="${faStack1X}"> fa-stack-1x</c:when><c:when test="${faStack2X}"> fa-stack-2x</c:when></c:choose><c:if test="${faInverse}"> fa-inverse</c:if> <c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
            <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
    </c:if>></i><jsp:doBody/></c:when>
    <c:otherwise><c:if test="${not empty style}"><span
            class="glyphicon glyphicon-${style}<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if
            test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
    </c:if>></span><jsp:doBody/></c:if></c:otherwise>
</c:choose>