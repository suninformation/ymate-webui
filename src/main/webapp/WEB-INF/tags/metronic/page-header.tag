<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 页头
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="container" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fixedTop" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="brand" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="brandClass" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="target" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="alt" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="hideMenuBtn" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hideResponsiveMenuBtn" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:page-header _id="${_id}"
                _style="${_style}"
                _attrs="${_attrs}">
    <jsp:attribute name="_class">navbar<c:choose><c:when test="${fixedTop}"> navbar-fixed-top</c:when><c:otherwise> navbar-static-top</c:otherwise></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body>
        <div class="page-header-inner<c:if test="${container}"> container</c:if>">
            <div class="page-logo">
                <c:if test="${not empty href}"><a href="${href}"<c:if test="${not empty target}"> target="${target}"</c:if>></c:if>
                    <bs:img src="${brand}" width="${width}" height="${height}" alt="${alt}" _class="${func:defaultIfBlank(brandClass, 'logo-default')}"/>
                <c:if test="${not empty href}"></a></c:if>
                <c:if test="${not hideMenuBtn}"><div class="menu-toggler sidebar-toggler"></div></c:if>
            </div>
            <c:if test="${not hideResponsiveMenuBtn}"><a href="#" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a></c:if>
            <jsp:doBody/>
        </div>
    </jsp:body>
</bs:page-header>
<bs:clearfix/>