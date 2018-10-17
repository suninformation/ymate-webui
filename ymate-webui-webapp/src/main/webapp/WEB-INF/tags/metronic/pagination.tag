<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 分页
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- circle: 圆角 --%>
<%@ attribute name="circle" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- bootpag: 采用Bootstrap风格 --%>
<%@ attribute name="bootpag" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- pager: 翻页模式 --%>
<%@ attribute name="pager" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:pagination _id="${_id}" _style="${_style}" _attrs="${_attrs}" pager="${pager}" small="${small}" large="${large}" nonNav="true">
    <jsp:attribute name="_class"><c:if test="${circle}"> pagination-circle</c:if><c:if test="${bootpag}"> bootpag</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body><jsp:doBody/></jsp:body>
</bs:pagination>