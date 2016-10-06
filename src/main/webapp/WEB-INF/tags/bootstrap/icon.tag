<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 字体图标
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- style: 图标名称，请参考：http://getbootstrap.com/components/#glyphicons --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="caret" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${caret}"><span class="caret<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>></span></c:when>
    <c:otherwise><c:if test="${not empty style}"><span class="glyphicon glyphicon-${style}<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>></span></c:if></c:otherwise>
</c:choose>