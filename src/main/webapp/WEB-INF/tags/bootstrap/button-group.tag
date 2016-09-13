<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 按钮组容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- toolbar: 按钮工具栏 --%>
<%@ attribute name="toolbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- vertical: 垂直排列--%>
<%@ attribute name="vertical" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- justified: 两端对齐排列 --%>
<%@ attribute name="justified" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- dropup: 向上弹出式菜单 --%>
<%@ attribute name="dropup" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 尺寸 --%>
<%@ attribute name="mini" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:elements _id="${_id}" _style="${_style}" _attrs="${_attrs}">
    <jsp:attribute name="_class"><c:choose><c:when test="${toolbar}">btn-toolbar</c:when><c:otherwise>btn-group<c:if test="${vertical}">-vertical</c:if><c:if test="${justified}"> btn-group-justified</c:if><c:if test="${dropup}"> dropup</c:if><c:choose><c:when test="${large}"> btn-group-lg</c:when><c:when test="${small}"> btn-group-sm</c:when><c:when test="${mini}"> btn-group-xs</c:when></c:choose></c:otherwise></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</bs:elements>