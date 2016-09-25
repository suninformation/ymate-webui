<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Notes
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="bordered" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="note note-${func:defaultIfBlank(style, 'warning')}<c:if test="${bordered}"> note-bordered</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:if test="${not empty title}"><h4 class="block">${title}</h4></c:if>
    <p><jsp:doBody/></p>
</div>