<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Blockquote
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="reverse" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<blockquote
        <c:if test="${not empty _id}">id="${_id}"</c:if>
<c:if test="${reverse or not empty _class}">
        class="<c:if test="${reverse}">blockquote-reverse</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
</c:if>
<c:if test="${not empty _style}"> style="${_style}"</c:if>
<c:if test="${not empty _attrs}"><%=" "%>
    ${_attrs}
</c:if>>
    <jsp:doBody/>
</blockquote>