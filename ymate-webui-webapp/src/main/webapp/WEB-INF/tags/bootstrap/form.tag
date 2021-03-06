<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表单
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="navbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- inline: 内联表单 --%>
<%@ attribute name="inline" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- horizontal: 水平排列的表单 --%>
<%@ attribute name="horizontal" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- disabled: 禁用表单内所有控件 --%>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fieldset" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="legend" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="name" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="action" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="method" rtexprvalue="true" type="java.lang.String" %>
<%-- enctype: multipart/form-data|application/x-www-form-urlencoded --%>
<%@ attribute name="enctype" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="multipart" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="urlencoded" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<form <c:if test="${not empty _id}">id="${_id}" </c:if><c:if test="${not empty name}">name="${name}" </c:if><c:if test="${not empty action}">action="${action}" </c:if><c:if test="${not empty method}">method="${method}" </c:if><c:choose><c:when test="${not empty enctype}">enctype="${enctype}" </c:when><c:when test="${multipart}">enctype="multipart/form-data" </c:when><c:when test="${urlencoded}">enctype="application/x-www-form-urlencoded" </c:when></c:choose><c:if test="${navbar or left or right or inline or horizontal or not empty _class}">class="<c:choose><c:when test="${navbar}"> navbar-form<c:choose><c:when test="${left}"> navbar-left</c:when><c:when test="${right}"> navbar-right</c:when></c:choose></c:when><c:otherwise><c:choose><c:when test="${inline}">form-inline</c:when><c:when test="${horizontal}">form-horizontal</c:when></c:choose></c:otherwise></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"</c:if><c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:if test="${fieldset or disabled or not empty legend}"><fieldset<c:if test="${disabled}"> disabled</c:if>><c:if test="${not empty legend}"><legend>${legend}</legend></c:if></c:if>
    <jsp:doBody/>
    <c:if test="${fieldset or disabled or not empty legend}"></fieldset></c:if>
</form>