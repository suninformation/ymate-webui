<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 顶部导航菜单项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%-- classic: 是否经典菜单模式 --%>
<%@ attribute name="classic" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- fullWidth: 指定下拉菜单宽度适应屏幕 --%>
<%@ attribute name="fullWidth" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- minWidth: 指定下拉菜单最小宽度 --%>
<%@ attribute name="minWidth" rtexprvalue="true" type="java.lang.Integer" %>
<%-- active: 是否设定为选中状态 --%>
<%@ attribute name="active" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- selected: 是否显示角标 --%>
<%@ attribute name="selected" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="dropdown" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hover" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<li class="<c:choose><c:when test="${classic}">classic-menu-dropdown</c:when><c:otherwise>mega-menu-dropdown<c:if test='${fullWidth}'> mega-menu-full</c:if></c:otherwise></c:choose><c:if test='${active}'> active</c:if>">
    <a <c:choose><c:when test="${dropdown}">data-toggle="dropdown" href="#" class="dropdown-toggle<c:if test="${disabled}"> disabled-link</c:if>"<c:if test="${hover}"> data-hover="megamenu-dropdown" data-close-others="true" </c:if></c:when><c:otherwise>href="${href}"<c:if test="${disabled}"> class="disabled-link"</c:if></c:otherwise></c:choose>>
        <c:choose><c:when test="${disabled}"><span class="disable-target">${title}<c:if test='${dropdown}'> <i class="fa fa-angle-down disable-target"></i></c:if><c:if test='${selected}'> <span class="selected disable-target"></span></c:if></span></c:when><c:otherwise>${title}<c:if test='${dropdown}'> <i class="fa fa-angle-down"></i></c:if><c:if test='${selected}'> <span class="selected"></span></c:if></c:otherwise></c:choose>
    </a>
    <c:choose><c:when test="${dropdown}">
        <c:choose><c:when test="${classic}">
            <ul class="dropdown-menu pull-left">
                <jsp:doBody/>
            </ul>
        </c:when><c:otherwise>
            <ul class="dropdown-menu"<c:if test="${minWidth > 0}"> style="min-width: ${minWidth}px;"</c:if>>
                <li>
                    <div class="mega-menu-content">
                        <jsp:doBody/>
                    </div>
                </li>
            </ul>
        </c:otherwise></c:choose>
    </c:when><c:otherwise>
        <jsp:doBody/>
    </c:otherwise></c:choose>
</li>