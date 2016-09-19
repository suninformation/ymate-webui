<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单项 - 消息
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="from" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="photo" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="time" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<li>
    <a href="${func:defaultIfBlank(href, '#')}">
        <span class="photo"><img src="${photo}" class="img-circle" alt=""></span>
        <span class="subject">
            <span class="from">${from}</span>
            <span class="time">${time}</span>
        </span>
        <span class="message"><jsp:doBody/></span>
    </a>
</li>
