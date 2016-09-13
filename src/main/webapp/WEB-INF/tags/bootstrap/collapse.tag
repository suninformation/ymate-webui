<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Collapse
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- opened: 默认是否展开 --%>
<%@ attribute name="expanded" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="panel" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="<c:if test="${panel}">panel-collapse </c:if>collapse<c:if test="${expanded}"> in</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>><jsp:doBody/></div>