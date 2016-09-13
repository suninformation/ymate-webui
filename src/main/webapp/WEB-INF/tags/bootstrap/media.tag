<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 媒体对象
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- list: 媒体对象列表组 --%>
<%@ attribute name="list" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- item: 将媒体对象作为组成员 --%>
<%@ attribute name="item" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- right: 图片显示在右侧 --%>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- middle: 图片垂直居中对齐 --%>
<%@ attribute name="middle" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="src" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="alt" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${list}">
        <ul <c:if test="${not empty _id}">id="${_id}" </c:if>class="media-list<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>><jsp:doBody/></ul>
    </c:when>
    <c:otherwise>
        <<c:choose><c:when test="${item}">li</c:when><c:otherwise>div</c:otherwise></c:choose> <c:if test="${not empty _id}">id="${_id}" </c:if>class="media<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
            <c:choose><c:when test="${right}"><div class="media-body"><h4 class="media-heading">${title}</h4><jsp:doBody/></div>
                <a class="media-right<c:if test="${middle}"> media-middle</c:if>" href="${func:defaultIfBlank(href, '#')}">
                <bs:img src="${src}" alt="${alt}" width="${width}" height="${height}"/>
            </a></c:when><c:otherwise><a class="media-left<c:if test="${middle}"> media-middle</c:if>" href="${func:defaultIfBlank(href, '#')}">
                    <bs:img src="${src}" alt="${alt}" width="${width}" height="${height}"/>
                </a><div class="media-body"><h4 class="media-heading">${title}</h4><jsp:doBody/></div></c:otherwise>
            </c:choose>
        </<c:choose><c:when test="${item}">li</c:when><c:otherwise>div</c:otherwise></c:choose>>
    </c:otherwise>
</c:choose>