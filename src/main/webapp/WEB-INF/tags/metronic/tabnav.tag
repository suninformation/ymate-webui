<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 标签导航
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- pills: 胶囊式标签页 --%>
<%@ attribute name="pills" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="reversed" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="below" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<ul <c:if test="${not empty _id}">id="${_id}" </c:if>class="nav<c:choose><c:when test="${pills}"> nav-pills</c:when><c:otherwise> nav-tabs</c:otherwise></c:choose><c:if test="${reversed}"> tabs-reversed</c:if><c:if test="${below}"> tabs-below</c:if><c:if test="${left}"> tabs-left</c:if><c:if test="${right}"> tabs-right</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>><jsp:doBody/></ul>