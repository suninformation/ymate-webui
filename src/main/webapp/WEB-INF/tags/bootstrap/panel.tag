<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 面版
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- style: 指定面板风格样式，可选值：default|primary|success|info|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%-- heading: 自定义面板标题 --%>
<%@ attribute name="heading" rtexprvalue="true" type="java.lang.String" %>
<%-- title: 默认面板标题 --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%-- footer: 自定义注脚内容 --%>
<%@ attribute name="footer" rtexprvalue="true" type="java.lang.String" %>
<%-- nobody: 自定义面板内容 --%>
<%@ attribute name="nobody" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- content: 当nobody=true时用于指定panel-body的内容 --%>
<%@ attribute name="content" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="panel panel-${func:defaultIfBlank(style, 'default')}<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <c:if test="${not empty heading or not empty title}">
        <div class="panel-heading">
            <c:choose>
                <c:when test="${not empty heading}">${heading}</c:when>
                <c:when test="${not empty title}">
                    <h3 class="panel-title">${title}</h3>
                </c:when>
            </c:choose>
        </div>
    </c:if>
    <c:choose>
        <c:when test="${nobody}">
            <c:if test="${not empty content}">
                <div class="panel-body">${content}</div>
            </c:if>
            <jsp:doBody/>
        </c:when>
        <c:otherwise><div class="panel-body"><jsp:doBody/></div></c:otherwise>
    </c:choose>
    <c:if test="${not empty footer}"><div class="panel-footer">${footer}</div></c:if>
</div>