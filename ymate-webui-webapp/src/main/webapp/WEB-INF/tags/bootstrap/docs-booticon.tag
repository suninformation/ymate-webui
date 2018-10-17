<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Booticon
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- inverse: 反色的，否则为outline --%>
<%@ attribute name="inverse" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="bs-docs-booticon bs-docs-booticon-<c:choose><c:when test="${inverse}">inverse</c:when><c:otherwise>outline</c:otherwise></c:choose><c:choose><c:when test="${small}"> bs-docs-booticon-sm</c:when><c:when test="${large}"> bs-docs-booticon-lg</c:when></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <jsp:doBody/>
</div>