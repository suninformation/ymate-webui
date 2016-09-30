<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Callout
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- style: 指定风格样式，可选值：info|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="bs-callout<c:if test="${not empty style}"> bs-callout-${style}</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:if test="${not empty title}"><h4>${title}</h4></c:if>
    <jsp:doBody/>
</div>