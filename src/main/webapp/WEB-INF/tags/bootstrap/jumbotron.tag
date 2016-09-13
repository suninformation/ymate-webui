<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 巨幕
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="container" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- fluid: 用于100%宽度, 占据全部视口的容器, 默认为false --%>
<%@ attribute name="fluid" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div<c:choose><c:when test="${not container}"> class="jumbotron<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if></c:when><c:otherwise> class="jumbotron"</c:otherwise></c:choose>>
    <c:choose>
        <c:when test="${container}">
            <div class="container<c:if test="${fluid}">-fluid</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
                <jsp:doBody/>
            </div>
        </c:when>
        <c:otherwise>
            <jsp:doBody/>
        </c:otherwise>
    </c:choose>
</div>