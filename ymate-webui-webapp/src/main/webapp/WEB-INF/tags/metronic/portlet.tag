<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 门户窗体组件
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="box" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="solid" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="light" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="bordered" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="inverse" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="fullHeightContent" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollable" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- sortable: 可拖拽组件 --%>
<%@ attribute name="sortable" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="portlet<c:if test="${sortable}"> portlet-sortable</c:if><c:choose><c:when test="${box or solid}"><c:choose><c:when test="${box}"> box</c:when><c:when test="${solid}"> solid</c:when></c:choose></c:when><c:when test="${light}"> light<c:if test="${bordered}"> bordered</c:if><c:if test="${inverse}"> bg-inverse</c:if></c:when></c:choose><c:if test="${fullHeightContent}"> full-height-content<c:if test="${scrollable}"> full-height-content-scrollable</c:if></c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
        <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
</c:if>>
    <jsp:doBody/>
</div>