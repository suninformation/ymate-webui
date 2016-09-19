<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 菜单项 - 任务
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="percent" required="true" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<li>
    <a href="${func:defaultIfBlank(href, '#')}">
        <span class="task">
            <span class="desc"><jsp:doBody/></span>
            <span class="percent">${percent}%</span>
        </span>
        <span class="progress">
            <bs:progress-bar style="success" value="${percent}"/>
        </span>
    </a>
</li>