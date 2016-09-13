<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表格
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- responsive: 响应式 --%>
<%@ attribute name="responsive" rtexprvalue="true" type="java.lang.Boolean" %>
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
<c:if test="${responsive}"><div class="table-responsive"></c:if>
<table <c:if test="${not empty _id}">id="${_id}" </c:if>class="table<c:if test="${striped}"> table-striped</c:if><c:if test="${bordered}"> table-bordered</c:if><c:if test="${hover}"> table-hover</c:if><c:if test="${hover}"> table-condensed</c:if>
<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <jsp:doBody/>
</table><c:if test="${responsive}"></div></c:if>