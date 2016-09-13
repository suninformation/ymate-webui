<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 图片签标
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="src" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="dataSrc" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="width" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="height" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="alt" rtexprvalue="true" type="java.lang.String" %>

<%-- responsive: 响应式图片 --%>
<%@ attribute name="responsive" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 形状 --%>
<%@ attribute name="rounded" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="circle" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="thumbnail" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:elements _tag="img" _id="${_id}" _src="${src}" _dataSrc="${dataSrc}" _width="${width}" _height="${height}" _alt="${alt}" _style="${_style}" _attrs="${_attrs}" _unclosed="true">
    <jsp:attribute name="_class">${_class}<c:if test="${responsive}"> img-responsive</c:if><c:choose><c:when test="${rounded}"> img-rounded</c:when><c:when test="${circle}"> img-circle</c:when><c:when test="${thumbnail}"> img-thumbnail</c:when></c:choose></jsp:attribute>
</bs:elements>