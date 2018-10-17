<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 警告框
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="heading" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="block" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dismissable" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- fade: 开启动画效果 --%>
<%@ attribute name="fade" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:alert _id="${_id}" _style="${_style}" _attrs="${_attrs}" dismissable="${dismissable}" style="${style}">
    <jsp:attribute name="_class"><c:if test="${fade}"> fade in</c:if><c:if test="${block}"> alert-block</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body>
        <c:if test="${not empty title}">
            <c:choose><c:when test="${heading}"><h4 class="alert-heading">${title}</h4></c:when><c:otherwise><strong>${title}</strong></c:otherwise></c:choose>
        </c:if>
        <jsp:doBody/>
    </jsp:body>
</bs:alert>