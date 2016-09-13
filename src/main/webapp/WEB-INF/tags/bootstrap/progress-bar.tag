<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 进度条
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- style: 指定进度条风格样式，可选值：success|info|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%-- value: 当前进度值 --%>
<%@ attribute name="value" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="minValue" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="maxValue" rtexprvalue="true" type="java.lang.Integer" %>
<%-- showLabel: 是否在进度条上显示标签 --%>
<%@ attribute name="showLabel" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- striped: 条纹效果 --%>
<%@ attribute name="striped" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<div class="progress-bar progress-bar-${func:defaultIfBlank(style, 'info')} <c:if test="${striped}"> progress-bar-striped</c:if>" role="progressbar" aria-valuenow="${value}" aria-valuemin="${minValue}" aria-valuemax="<c:choose><c:when test="${maxValue > 0}">${maxValue}</c:when><c:otherwise>100</c:otherwise></c:choose>" style="width: ${value}%">
    <span<c:if test="${!showLabel}"> class="sr-only"</c:if>>${value}%</span>
</div>