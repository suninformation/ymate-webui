<%--
  User: 刘镇 (suninformation@163.com)
  Desc: SB-Admin2 -- Chat
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="chat" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="text" rtexprvalue="true" type="java.lang.String" %>
<%-- avatar: 头像图片 --%>
<%@ attribute name="avatar" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose><c:when test="${chat}"><ul class="chat"><jsp:doBody/></ul></c:when><c:otherwise>
    <li class="<c:choose><c:when test="${right}">right</c:when><c:otherwise>left</c:otherwise></c:choose> clearfix">
        <span class="chat-img<c:choose><c:when test="${right}"> pull-right</c:when><c:otherwise> pull-left</c:otherwise></c:choose>">${avatar}</span>
        <div class="chat-body clearfix">
            <div class="header">
                <c:choose><c:when test="${right}">
                    <small class="text-muted">${text}</small>
                    <strong class="pull-right primary-font">${title}</strong>
                </c:when><c:otherwise>
                    <strong class="primary-font">${title}</strong>
                    <small class="pull-right text-muted">${text}</small>
                </c:otherwise></c:choose>
            </div>
            <jsp:doBody/>
        </div>
    </li>
</c:otherwise></c:choose>