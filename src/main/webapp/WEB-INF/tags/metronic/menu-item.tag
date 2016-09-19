<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="linkStyle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="image" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="label" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="labelStyle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="labelRoundless" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="labelPullRight" rtexprvalue="true" type="java.lang.Boolean" %>

<%-- subitem: 是否指定为子菜单 --%>
<%@ attribute name="subitem" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- subtitle: 指定子菜单标题 --%>
<%@ attribute name="subtitle" rtexprvalue="true" type="java.lang.String" %>
<%-- dropdown: 指定子菜单为下拉模式 --%>
<%@ attribute name="dropdown" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="divider" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${divider}">
        <li class="divider"></li>
    </c:when>
    <c:when test="${subitem}">
        <c:choose><c:when test="${dropdown}">
            <li class="dropdown-submenu">
                <a href="#" <c:if test="${disabled}">class="disabled-link"</c:if>><c:if test='${not empty icon}'> <i class="${icon}<c:if test="${disabled}"> disabled-link</c:if>"></i> </c:if><c:choose><c:when test="${disabled}"><span class="disable-target">${subtitle}</span></c:when><c:otherwise>${subtitle}</c:otherwise></c:choose></a>
                <ul class="dropdown-menu">
                    <jsp:doBody/>
                </ul>
            </li>
        </c:when><c:otherwise>
            <ul class="mega-menu-submenu">
                <c:if test='${not empty subtitle}'><li><h3>${subtitle}</h3></li></c:if>
                <jsp:doBody/>
            </ul>
        </c:otherwise></c:choose>
    </c:when><c:otherwise>
    <li>
        <a href="${func:defaultIfBlank(href, '#')}"<c:if test="${linkStyle or disabled}"> class="<c:if test="${not empty linkStyle}">${linkStyle}</c:if><c:if test="${disabled}"> disabled-link</c:if>"</c:if>>
            <c:choose><c:when test='${not empty icon}'> <i class="${icon}<c:if test="${disabled}"> disable-target</c:if>"></i> </c:when><c:when test='${not empty image}'><img<c:if test="${disabled}"> class="disable-target"</c:if> src="${image}" alt=""> </c:when></c:choose>
            <c:choose><c:when test="${disabled}"><span class="disable-target"><jsp:doBody/></span></c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose>
            <c:if test='${not empty label}'> <span class="badge<c:if test="${labelRoundless}"> badge-roundless</c:if> badge-${func:defaultIfBlank(labelStyle, 'danger')}<c:if test="${labelPullRight}"> pull-right</c:if><c:if test="${disabled}"> disable-target</c:if>">${label}</span></c:if>
        </a>
    </li>
</c:otherwise></c:choose>