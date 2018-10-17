<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 缩略图
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="target" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="src" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dataSrc" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="alt" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="responsive" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="caption" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:elements _id="${_id}" _style="${_style}" _attrs="${_attrs}" _href="${href}" _target="${target}">
    <jsp:attribute name="_tag"><c:if test="${not caption}">a</c:if></jsp:attribute>
    <jsp:attribute name="_class">thumbnail<c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body>
        <bs:img src="${src}" dataSrc="${dataSrc}" width="${width}" height="${height}" alt="${alt}" responsive="${responsive}"/>
        <c:if test="${caption}">
            <div class="caption"><jsp:doBody/></div>
        </c:if>
    </jsp:body>
</bs:elements>