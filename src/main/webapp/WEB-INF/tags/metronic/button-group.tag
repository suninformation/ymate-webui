<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 按钮组容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- circle: 圆角 --%>
<%@ attribute name="circle" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="toggle" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="toolbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="vertical" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="justified" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="dropup" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="mini" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:button-group _id="${_id}" _style="${_style}" toolbar="${toolbar}" vertical="${vertical}" justified="${justified}" dropup="${dropup}" mini="${mini}" small="${small}" large="${large}">
    <jsp:attribute name="_class"><c:if test="${circle}"> btn-group-circle</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:attribute name="_attrs"><c:if test="${toggle}"> data-toggle="buttons"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if></jsp:attribute>
    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</bs:button-group>