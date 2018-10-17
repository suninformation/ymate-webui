<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- top: 顶部导航菜单 --%>
<%@ attribute name="hor" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- light: 明亮风格样式 --%>
<%@ attribute name="light" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="hiddenSM" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hiddenXS" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:elements _hiddenSM="${hiddenSM}" _hiddenXS="${hiddenXS}">
    <jsp:attribute name="_class">
        <c:choose><c:when test="${not hor}">top-menu</c:when>
        <c:otherwise>hor-menu<c:if test="${light}"> hor-menu-light</c:if></c:otherwise>
    </c:choose></jsp:attribute>
    <jsp:body>
        <bs:nav _id="${_id}" _style="${_style}" _attrs="${_attrs}" navbar="true">
            <jsp:attribute name="_class">
                ${_class}<c:if test="${not hor}"> pull-right</c:if>
            </jsp:attribute>
            <jsp:body><jsp:doBody/></jsp:body>
        </bs:nav>
    </jsp:body>
</bs:elements>