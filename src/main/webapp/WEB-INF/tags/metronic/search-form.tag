<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 搜索框
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="name" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="action" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="method" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="placeholder" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="expanded" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="sidebar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="bordered" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="solid" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${sidebar}">
        <li class="sidebar-search-wrapper">
            <form class="sidebar-search<c:if test="${bordered}"> sidebar-search-bordered</c:if><c:if test="${solid}"> sidebar-search-solid</c:if>" action="${func:defaultIfBlank(action, '#')}" method="${func:defaultIfBlank(method, 'GET')}">
                <a href="#" class="remove"><i class="icon-close"></i></a>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="${func:defaultIfBlank(placeholder, 'Search...')}" name="${func:defaultIfBlank(name, 'query')}">
                    <span class="input-group-btn">
                        <a href="#" class="btn submit"><i class="icon-magnifier"></i></a>
                    </span>
                </div>
            </form>
        </li>
    </c:when>
    <c:otherwise>
        <form class="search-form<c:if test="${expanded}"> search-form-expanded</c:if>" action="${func:defaultIfBlank(action, '#')}" method="${func:defaultIfBlank(method, 'GET')}">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="${func:defaultIfBlank(placeholder, 'Search...')}" name="${func:defaultIfBlank(name, 'query')}">
                <span class="input-group-btn"><a href="#" class="btn submit"><i class="icon-magnifier"></i></a></span>
            </div>
        </form>
    </c:otherwise>
</c:choose>