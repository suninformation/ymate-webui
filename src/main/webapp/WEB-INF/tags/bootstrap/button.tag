<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 按钮
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- type: 指定非link按钮的type属性, 默认值为button --%>
<%@ attribute name="type" rtexprvalue="true" type="java.lang.String" %>
<%-- style: 指定按钮风格样式, 可选值: default|primary|success|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%-- link: 强制使用<a>做为按钮标签 --%>
<%@ attribute name="link" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- tag: 自定义标签tag, 当link=false时默认为button --%>
<%@ attribute name="tag" rtexprvalue="true" type="java.lang.String" %>
<%-- href: 当link=true时用于指定按钮连接地址 --%>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%-- block: 指定按钮宽度拉伸至100% --%>
<%@ attribute name="block" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- dropdown: 配合下拉菜单 --%>
<%@ attribute name="dropdown" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="collapseId" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="modalId" rtexprvalue="true" type="java.lang.String" %>

<%-- tip: 指定tooltip提示信息内容 --%>
<%@ attribute name="tip" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="placement" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="popover" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="content" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="navbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="mini" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<<c:choose><c:when test="${link}">a</c:when><c:otherwise>${func:defaultIfBlank(tag, 'button')}</c:otherwise></c:choose> <c:if
        test="${not empty _id}"> id="${_id}"</c:if><c:choose><c:when
        test="${link}"> href="${func:defaultIfBlank(href, '#')}"</c:when><c:otherwise><c:if
        test="${not link and (empty tag or tag eq 'button')}"> type="${func:defaultIfBlank(type, 'button')}"</c:if></c:otherwise></c:choose> class="<c:if test="${not empty style}">btn btn-${style}</c:if><c:if test="${navbar}"> navbar-btn<c:choose><c:when test="${left}"> navbar-left</c:when><c:when test="${right}"> navbar-right</c:when></c:choose></c:if><c:if test="${block}"> btn-block</c:if><c:choose><c:when test="${mini}"> btn-xs</c:when><c:when test="${small}"> btn-sm</c:when><c:when test="${large}"> btn-lg</c:when></c:choose><c:if test="${disabled}"> disabled</c:if><c:if test="${dropdown}"> dropdown-toggle</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
        <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if
        test="${dropdown}"> data-toggle="dropdown"</c:if><c:if
        test="${not empty collapseId}"> data-toggle="collapse" data-target="#${collapseId}"</c:if><c:if
        test="${not empty modalId}"> data-toggle="modal" data-target="#${modalId}"</c:if><c:if
        test="${not empty tip or not empty popover}"> data-container="body"<c:choose><c:when
        test="${not empty tip}"> data-tip="tooltip" title="${tip}"</c:when><c:otherwise> data-popover="popover"<c:choose><c:when
        test="${not empty content}"> title="${popover}" data-content="${content}"</c:when><c:otherwise> data-content="${popover}"</c:otherwise></c:choose></c:otherwise></c:choose> data-placement="${func:defaultIfBlank(placement, 'auto')}"</c:if><c:if
        test="${not empty _attrs}"><%=" "%>${_attrs}
</c:if>><jsp:doBody/></<c:choose><c:when test="${link}">a</c:when><c:otherwise>${func:defaultIfBlank(tag, 'button')}</c:otherwise></c:choose>>