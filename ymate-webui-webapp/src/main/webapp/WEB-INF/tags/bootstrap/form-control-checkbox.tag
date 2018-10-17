<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表单控件--复选
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="name" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="value" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="attrs" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="inline" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="checked" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:if test="${!inline}"><div class="checkbox<c:if test="${disabled}"> disabled</c:if>"></c:if>
    <label<c:if test="${inline}"> class="checkbox-inline<c:if test="${disabled}"> disabled</c:if>"</c:if>>
        <input
        <c:if test="${not empty id}"> id="${id}"</c:if> type="checkbox"
        <c:if test="${not empty name}"> name="${name}"</c:if> value="${value}" <c:if test="${disabled}"> disabled</c:if><c:if test="${checked}"> checked</c:if><c:if test="${not empty style}"> class="${style}"</c:if><c:if test="${not empty attrs}">${" ".concat(attrs)}</c:if>>
        <jsp:doBody/>
    </label>
<c:if test="${!inline}"></div></c:if>
