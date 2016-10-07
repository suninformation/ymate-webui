<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 导航
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="navbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- tabs: 标签页 --%>
<%@ attribute name="tabs" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- pills: 胶囊式标签页 --%>
<%@ attribute name="pills" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- stacked: 胶囊是标签页垂直方向堆叠排列 --%>
<%@ attribute name="stacked" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- justified: 两端对齐的标签页--%>
<%@ attribute name="justified" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<ul <c:if test="${not empty _id}">id="${_id}" </c:if>class="nav<c:choose><c:when test="${navbar}"> navbar-nav</c:when><c:otherwise><c:choose><c:when test="${tabs}"> nav-tabs</c:when><c:when test="${pills}"> nav-pills<c:if test="${stacked}"> nav-stacked</c:if></c:when></c:choose><c:if test="${justified}"> nav-justified</c:if></c:otherwise></c:choose><c:choose><c:when test="${left}"> navbar-left</c:when><c:when test="${right}"> navbar-right</c:when></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>><jsp:doBody/></ul>