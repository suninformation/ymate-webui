<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 嵌入内容
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="ratio16by9" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="ratio4by3" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 以下为直接生成iframe标签所需参数 --%>
<%@ attribute name="iframe" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="src" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="allowfullscreen" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="embed-responsive<c:choose><c:when test="${ratio4by3}"> embed-responsive-16by9</c:when><c:when test="${ratio16by9}"> embed-responsive-16by9</c:when></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:choose><c:when test="${iframe}">
        <iframe <c:if test="${width > 0}"> width="${width}"</c:if><c:if test="${height > 0}"> height="${height}"</c:if> class="embed-responsive-item<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if> src="${src}" <c:if test="${allowfullscreen}"> allowfullscreen</c:if>></iframe>
    </c:when><c:otherwise>
        <jsp:doBody/>
    </c:otherwise></c:choose>
</div>