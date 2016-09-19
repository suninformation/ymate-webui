<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%@ taglib tagdir="/WEB-INF/tags/metronic" prefix="m" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="image" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="imageCircle" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="label" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="labelStyle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="labelRoundless" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="extended" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="subtitle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dark" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="dropdown" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hover" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- menuList: 是否生成dropdown-menu-list列表元素 --%>
<%@ attribute name="menuList" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- hideArrowIcon: 是否隐藏下拉箭头图标 --%>
<%@ attribute name="hideArrowIcon" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="handleColor" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<li <c:if test="${not empty _id}">id="${_id}" </c:if>class="dropdown<c:if test="${extended}"> dropdown-extended</c:if><c:if test="${dark}"> dropdown-dark</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if><c:if test="${not empty _style}"><%=" "%>${_style}</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>">
    <a href="${func:defaultIfBlank(href, '#')}" class="dropdown-toggle" data-toggle="dropdown"<c:if test="${hover}"> data-hover="dropdown" data-close-others="true"</c:if>><c:choose><c:when test='${not empty icon}'><i class="${icon}"></i></c:when><c:when test='${not empty image}'><img src="${image}"<c:if test="${imageCircle}"> class="img-circle"</c:if> alt=""></c:when></c:choose><c:if test='${not empty label}'> <span class="badge<c:if test="${labelRoundless}"> badge-roundless</c:if> badge-${func:defaultIfBlank(labelStyle, 'danger')}">${label}</span></c:if> ${title}<c:if test="${dropdown && not hideArrowIcon}"><i class="fa fa-angle-down"></i></c:if> </a>
    <c:choose><c:when test="${dropdown}"><ul class="dropdown-menu<c:if test="${not menuList}"> dropdown-menu-default</c:if>">
        <c:if test="${extended}"><li class="external">${subtitle}</li></c:if>
        <c:choose><c:when test="${menuList}"><li>
            <ul class="dropdown-menu-list<c:if test="${height > 0}"> scroller</c:if>"<c:if test="${height > 0}"> style="height: ${height}px;"</c:if> data-handle-color="${func:defaultIfBlank(handleColor, '#637283')}">
                <jsp:doBody/>
            </ul>
        </li></c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose>
    </ul></c:when><c:otherwise><ul class="dropdown-menu hide"></ul></c:otherwise></c:choose>
</li>