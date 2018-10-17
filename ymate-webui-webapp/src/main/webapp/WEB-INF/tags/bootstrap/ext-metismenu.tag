<%--
  User: 刘镇 (suninformation@163.com)
  Desc: metisMenu -- A jQuery menu plugin
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="topLinks" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="sidebarSearch" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="formName" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="formAction" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="formMethod" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="formPlaceholder" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="secondLevel" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="thirdLevel" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="collapseId" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose><c:when test="${topLinks}">
    <bs:nav _id="${_id}" _style="${_style}" _attrs="${_attrs}" left="${left}" right="${right}">
        <jsp:attribute name="_class">navbar-top-links<c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
        <jsp:body><jsp:doBody/></jsp:body>
    </bs:nav>
</c:when><c:when test="${sidebarSearch}">
    <li class="sidebar-search">
        <form action="${func:defaultIfBlank(formAction, '#')}" method="${func:defaultIfBlank(formMethod, 'GET')}">
            <div class="input-group custom-search-form">
                <input type="text" class="form-control" placeholder="${func:defaultIfBlank(formPlaceholder, 'Search...')}" name="${func:defaultIfBlank(formName, 'query')}">
                <span class="input-group-btn"><button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button></span>
            </div>
        </form>
    </li>
</c:when><c:when test="${secondLevel}">
    <bs:nav _id="${_id}" _style="${_style}" _attrs="${_attrs}">
        <jsp:attribute name="_class">nav-second-level<c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
        <jsp:body><jsp:doBody/></jsp:body>
    </bs:nav>
</c:when><c:when test="${thirdLevel}">
    <bs:nav _id="${_id}" _style="${_style}" _attrs="${_attrs}">
        <jsp:attribute name="_class">nav-third-level<c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
        <jsp:body><jsp:doBody/></jsp:body>
    </bs:nav>
</c:when><c:otherwise>
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse collapse"<c:if test="${not empty collapseId}"> id="${collapseId}"</c:if>>
            <bs:nav _id="${func:defaultIfBlank(_id, 'side-menu')}" _style="${_style}" _attrs="${_attrs}"><jsp:doBody/></bs:nav>
        </div>
    </div>
</c:otherwise></c:choose>