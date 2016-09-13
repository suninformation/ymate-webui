<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Carousel
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="src" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dataSrc" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="alt" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="active" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="responsive" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="item<c:if test="${active}"> active</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <bs:img src="${src}" dataSrc="${dataSrc}" width="${width}" height="${height}" alt="${alt}" responsive="${responsive}"/>
    <div class="carousel-caption"><jsp:doBody/></div>
</div>