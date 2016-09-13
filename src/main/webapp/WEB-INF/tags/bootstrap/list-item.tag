<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 列表项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- link: 指定为链接列表模式 --%>
<%@ attribute name="link" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%-- style: 指定列表项风格样式，可选值：success|info|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="heading" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="badge" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="active" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:elements _id="${_id}" _style="${_style}" _attrs="${_attrs}">
    <jsp:attribute name="_tag"><c:choose><c:when test="${link}">a</c:when><c:otherwise>li</c:otherwise></c:choose></jsp:attribute>
    <jsp:attribute name="_class">list-group-item<c:if test="${not empty style}"> list-group-item-${style}</c:if><c:if test="${disabled}"> disabled</c:if><c:if test="${active}"> active</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:attribute name="_href"><c:if test="${link}">${href}</c:if></jsp:attribute>
    <jsp:body>
        <c:if test="${not empty badge}"><span class="badge">${badge}</span></c:if>
        <c:choose>
            <c:when test="${not empty heading}">
                <h4 class="list-group-item-heading">${heading}</h4>
                <p class="list-group-item-text"><jsp:doBody/></p>
            </c:when>
            <c:otherwise><jsp:doBody/></c:otherwise>
        </c:choose>
    </jsp:body>
</bs:elements>