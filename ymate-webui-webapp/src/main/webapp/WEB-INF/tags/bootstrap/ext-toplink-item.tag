<%--
  User: 刘镇 (suninformation@163.com)
  Desc: SB-Admin2 -- TopLinks-Item
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="styleMessages" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="styleTasks" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="styleAlerts" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="styleUser" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="moreBtn" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="alerts" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="tasks" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="messages" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="text" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="taskStyle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="taskValue" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="taskActive" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="taskStriped" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:choose><c:when test="${moreBtn}">
    <bs:item href="${func:defaultIfBlank(href, '#')}" _class="text-center">
        <c:choose><c:when test="${not empty title}"><strong>${title}</strong><bs:icon fa="true" style="angle-right" faW="true"/></c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose>
    </bs:item>
</c:when><c:when test="${alerts}">
    <bs:item href="${func:defaultIfBlank(href, '#')}">
        <div>
            <c:choose><c:when test="${not empty icon}"><bs:icon fa="true" style="${icon}" faW="true">${title}</bs:icon></c:when><c:otherwise>${title}</c:otherwise></c:choose>
            <span class="pull-right text-muted small">${text}</span>
            <div><jsp:doBody/></div>
        </div>
    </bs:item>
    <bs:item divider="true"/>
</c:when><c:when test="${tasks}">
    <bs:item href="${func:defaultIfBlank(href, '#')}">
        <div>
            <p>
                <c:choose><c:when test="${not empty icon}"><bs:icon fa="true" style="${icon}" faW="true"><strong>${title}</strong></bs:icon></c:when><c:otherwise><strong>${title}</strong></c:otherwise></c:choose>
                <span class="pull-right text-muted"><jsp:doBody/></span>
            </p>
            <bs:progress striped="${taskStriped}" active="${taskActive}">
                <bs:progress-bar style="${taskStyle}" value="${taskValue}"/>
            </bs:progress>
        </div>
    </bs:item>
    <bs:item divider="true"/>
</c:when><c:when test="${messages}">
    <bs:item href="${func:defaultIfBlank(href, '#')}">
        <div>
            <c:choose><c:when test="${not empty icon}"><bs:icon fa="true" style="${icon}" faW="true">${title}</bs:icon></c:when><c:otherwise>${title}</c:otherwise></c:choose>
            <span class="pull-right text-muted small">${text}</span>
        </div>
        <div><jsp:doBody/></div>
    </bs:item>
    <bs:item divider="true"/>
</c:when><c:otherwise>
    <bs:item dropdown="true" title="${title}">
        <jsp:attribute name="menuClass"><c:choose><c:when test="${styleMessages}"> dropdown-messages</c:when><c:when test="${styleTasks}"> dropdown-tasks</c:when><c:when test="${styleAlerts}"> dropdown-alerts</c:when><c:when test="${styleUser}"> dropdown-user</c:when></c:choose></jsp:attribute>
        <jsp:attribute name="_style"><c:if test="${styleUser}"> height: 50px;</c:if></jsp:attribute>
        <jsp:body><jsp:doBody/></jsp:body>
    </bs:item>
</c:otherwise></c:choose>