<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 路径导航项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="separator" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="start" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="last" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<li><c:if test="${start}"><i class="${func:defaultIfBlank(icon, 'fa fa-home')}"></i></c:if><a href="${func:defaultIfBlank(href, '#')}"><jsp:doBody/></a><c:if test="${!last}"><i class="${func:defaultIfBlank(separator, 'fa fa-angle-right')}"></i></c:if></li>