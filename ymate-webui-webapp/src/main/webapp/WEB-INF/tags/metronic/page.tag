<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 页面
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="viewport" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="keywords" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="description" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="author" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="lang" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="charset" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="headerBody" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="fixedHeader" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fixedMobileHeader" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fixedFooter" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="sidebarOverContent" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="sidebarClosed" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="sidebarClosedHideLogo" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="sidebarHide" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fixedSidebar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="sidebarReversed" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="boxed" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fullWidth" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:page _style="${_style}"
         _attrs="${_attrs}"
         headerBody="${headerBody}"
         title="${title}"
         viewport="${viewport}"
         keywords="${keywords}"
         description="${description}"
         author="${author}"
         lang="${lang}"
         charset="${charset}">
    <jsp:attribute name="_class"><c:if test="${fixedHeader}">page-header-fixed</c:if>
<c:if test="${fixedMobileHeader}"> page-header-fixed-mobile</c:if>
<c:if test="${fixedFooter}"> page-footer-fixed</c:if>
<c:if test="${sidebarOverContent}"> page-quick-sidebar-over-content</c:if>
<c:if test="${sidebarClosed}"> page-sidebar-closed</c:if>
<c:if test="${sidebarClosedHideLogo}"> page-sidebar-closed-hide-logo</c:if>
<c:if test="${sidebarHide}"> page-sidebar-hide</c:if>
<c:if test="${fixedSidebar}"> page-sidebar-fixed</c:if>
<c:if test="${sidebarReversed}"> page-sidebar-reversed</c:if>
<c:if test="${fullWidth}"> page-full-width</c:if>
<c:if test="${boxed}"> page-boxed</c:if></jsp:attribute>
    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</bs:page>