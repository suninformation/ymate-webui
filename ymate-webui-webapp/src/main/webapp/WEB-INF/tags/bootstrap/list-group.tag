<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 列表组
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- link: 指定为链接列表模式 --%>
<%@ attribute name="link" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<<c:choose><c:when test="${link}">div</c:when><c:otherwise>ul</c:otherwise></c:choose> <c:if test="${not empty _id}">id="${_id}" </c:if> class="list-group<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <jsp:doBody/>
</<c:choose><c:when test="${link}">div</c:when><c:otherwise>ul</c:otherwise></c:choose>>