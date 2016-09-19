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

<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dismissable" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:alert _id="${_id}" _style="${_style}" _class="${_class}" _attrs="${_attrs}" dismissable="${dismissable}" style="${style}">
    <c:if test="${not empty title}">
        <c:choose><c:when test="${heading}"><h4 class="alert-heading">${title}</h4></c:when><c:otherwise><strong>${title}</strong></c:otherwise></c:choose>
    </c:if>
    <jsp:doBody/>
</bs:alert>