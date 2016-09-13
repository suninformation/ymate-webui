<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 栅格系统-列
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="md" required="true" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="mdOffset" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="mdPush" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="mdPull" rtexprvalue="true" type="java.lang.Integer" %>

<%@ attribute name="xs" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="xsOffset" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="xsPush" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="xsPull" rtexprvalue="true" type="java.lang.Integer" %>

<%@ attribute name="sm" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="smOffset" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="smPush" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="smPull" rtexprvalue="true" type="java.lang.Integer" %>

<%@ attribute name="lg" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="lgOffset" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="lgPush" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="lgPull" rtexprvalue="true" type="java.lang.Integer" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="col-md-${md} <c:if test="${mdOffset > 0}"> col-md-offset-${mdOffset}</c:if><c:if test="${mdPush > 0}"> col-md-push-${mdPush}</c:if><c:if test="${mdPull > 0}"> col-md-pull-${mdPull}</c:if>
<c:if test="${xs > 0}"> col-xs-${xs}<c:if test="${xsOffset > 0}"> col-md-offset-${xsOffset}</c:if><c:if test="${xsPush > 0}"> col-md-push-${xsPush}</c:if><c:if test="${xsPull > 0}"> col-md-pull-${xsPull}</c:if></c:if>
<c:if test="${sm > 0}"> col-sm-${sm}<c:if test="${smOffset > 0}"> col-sm-offset-${smOffset}</c:if><c:if test="${smPush > 0}"> col-sm-push-${smPush}</c:if><c:if test="${smPull > 0}"> col-sm-pull-${smPull}</c:if></c:if>
<c:if test="${lg > 0}"> col-lg-${lg}<c:if test="${lgOffset > 0}"> col-lg-offset-${lgOffset}</c:if><c:if test="${lgPush > 0}"> col-lg-push-${lgPush}</c:if><c:if test="${lgPull > 0}"> col-lg-pull-${lgPull}</c:if>
</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <jsp:doBody/>
</div>