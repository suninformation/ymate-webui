<%--
  User: 刘镇 (suninformation@163.com)
  Desc: SB-Admin2 -- Timeline
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="timeline" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- style: 指定风格样式，可选值：default|primary|success|info|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="text" rtexprvalue="true" type="java.lang.String" %>
<%-- icon: Font Awesome Icons --%>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="inverted" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<c:choose><c:when test="${timeline}"><ul class="timeline"><jsp:doBody/></ul></c:when><c:otherwise>
    <li<c:if test="${inverted}"> class="timeline-inverted"</c:if>>
        <c:if test="${not empty icon}"><div class="timeline-badge ${style}"><i class="fa fa-${icon}"></i></div></c:if>
        <div class="timeline-panel">
            <c:if test="${not empty title or not empty text}"><div class="timeline-heading">
                <c:if test="${not empty title}"><h4 class="timeline-title">${title}</h4></c:if>
                <c:if test="${not empty text}"><p><small class="text-muted">${text}</small></p></c:if>
            </div></c:if>
            <div class="timeline-body"><jsp:doBody/></div>
        </div>
    </li>
</c:otherwise></c:choose>