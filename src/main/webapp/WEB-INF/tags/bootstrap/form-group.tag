<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表单组容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- feedbackIcon: 额外的图标 --%>
<%@ attribute name="feedbackIcon" rtexprvalue="true" type="java.lang.String" %>
<%-- has*: 校验状态 --%>
<%@ attribute name="hasWarning" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hasError" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hasSuccess" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 尺寸 --%>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:group type="form" _id="${_id}" _attrs="${_attrs}" _style="${_style}">
    <jsp:attribute name="_class">
        ${_class}
        <c:choose><c:when test="${large}"> form-group-lg</c:when><c:when test="${small}"> form-group-sm</c:when></c:choose>
        <c:if test="${not empty feedbackIcon}"> has-feedback</c:if>
        <c:choose>
            <c:when test="${hasError}"> has-error</c:when>
            <c:when test="${hasWarning}"> has-warning</c:when>
            <c:when test="${hasSuccess}"> has-success</c:when>
        </c:choose>
    </jsp:attribute>
    <jsp:body><jsp:doBody/></jsp:body>
</bs:group>