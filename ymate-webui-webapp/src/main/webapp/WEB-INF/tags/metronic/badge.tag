<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 徽章
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%--
    style: 设置徽章风格, 可选值: default|primary|success|info|warning|danger
--%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="roundless" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:badge _id="${_id}" _attrs="${_attrs}" _style="${_style}">
    <jsp:attribute name="_class">badge-${func:defaultIfBlank(style, 'default')} <c:if test="${roundless}"> badge-roundless</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body><jsp:doBody/></jsp:body>
</bs:badge>