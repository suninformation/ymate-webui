<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 门户窗体内容容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- emptyBody: 设置内容体为空--%>
<%@ attribute name="emptyBody" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- emptyBody: 设置内容体为表单--%>
<%@ attribute name="formBody" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="fullHeightContent" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="portlet-body<c:if test="${formBody}"> form</c:if><c:if test="${emptyBody}"> portlet-empty</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:choose><c:when test="${fullHeightContent}"><div class="full-height-content-body"><jsp:doBody/></div></c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose>
</div>