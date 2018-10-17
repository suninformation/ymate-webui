<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表格
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- responsive: 响应式 --%>
<%@ attribute name="responsive" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollable" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="advance" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- striped: 条纹状 --%>
<%@ attribute name="striped" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- bordered: 带边框 --%>
<%@ attribute name="bordered" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- hover: 鼠标悬停 --%>
<%@ attribute name="hover" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- condensed: 紧缩 --%>
<%@ attribute name="condensed" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:if test="${responsive or scrollable}"><div class="<c:if test="${responsive}">table-responsive</c:if><c:if test="${scrollable}"> table-scrollable</c:if>"></c:if>
<bs:table striped="${striped}" bordered="${bordered}" hover="${hover}" condensed="${condensed}" _id="${_id}" _style="${_style}" _attrs="${_attrs}">
    <jsp:attribute name="_class"><c:if test="${advance}"> table-advance</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
    <jsp:body><jsp:doBody/></jsp:body>
</bs:table><c:if test="${responsive}"></div></c:if>