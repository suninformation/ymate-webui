<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 侧栏导航菜单组件
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="quick" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="autoScroll" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollSpeed" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="slideSpeed" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="light" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hover" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="closed" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="expanded" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="showMenuBtn" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:choose><c:when test="${quick}">
    <a href="#" class="page-quick-sidebar-toggler"><i class="icon-close"></i></a>
    <div class="page-quick-sidebar-wrapper">
        <div class="page-quick-sidebar">
            <div class="nav-justified"><jsp:doBody/></div>
        </div>
    </div>
</c:when><c:otherwise>
    <div class="page-sidebar-wrapper">
        <div class="page-sidebar navbar-collapse collapse"<c:if test="${autoScroll}"> data-auto-scroll="true"<c:if test="${scrollSpeed > 0}"> data-auto-speed="${scrollSpeed}"</c:if></c:if>>
            <ul class="page-sidebar-menu<c:if test="${light}"> page-sidebar-menu-light</c:if><c:if test="${hover}"> page-sidebar-menu-hover-submenu</c:if><c:if test="${closed}"> page-sidebar-menu-closed</c:if>"<c:if test="${expanded}"> data-keep-expanded="true"</c:if><c:if test="${autoScroll}"> data-auto-scroll="true"<c:if test="${slideSpeed > 0}"> data-slide-speed="${slideSpeed}"</c:if></c:if>>
                <c:if test="${showMenuBtn}"><li class="sidebar-toggler-wrapper">
                    <div class="sidebar-toggler"></div>
                </li></c:if>
                <jsp:doBody/>
            </ul>
        </div>
    </div>
</c:otherwise></c:choose>
<c:out value="" escapeXml="true"/>