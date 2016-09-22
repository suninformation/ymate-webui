<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单项 - 通知
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="time" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<li>
    <a href="${func:defaultIfBlank(href, '#')}">
        <c:if test="${not empty time}"><span class="time">${time}</span></c:if>
        <span class="details"><c:if test="${not empty icon}"><span class="label label-sm label-icon label-${func:defaultIfBlank(style, 'warning')}"><i class="${icon}"></i> </span></c:if><jsp:doBody/></span>
    </a>
</li>
