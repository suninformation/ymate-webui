<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 可嵌套列表项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- content: 显示的内容 --%>
<%@ attribute name="content" rtexprvalue="true" type="java.lang.String" %>
<%-- dataId: 数据主键ID --%>
<%@ attribute name="dataId" rtexprvalue="true" type="java.lang.String" %>
<%-- handle: 显示拖拽句柄 --%>
<%@ attribute name="handle" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<li <c:if test="${not empty _id}">id="${_id}" </c:if>class="dd-item<c:if test="${handle}"> dd3-item</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if> data-id="${dataId}"<c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:choose><c:when test="${handle}">
        <div class="dd-handle dd3-handle"></div>
        <div class="dd3-content">${content}</div>
    </c:when><c:otherwise><div class="dd-handle">${content}</div></c:otherwise></c:choose>
    <jsp:doBody/>
</li>