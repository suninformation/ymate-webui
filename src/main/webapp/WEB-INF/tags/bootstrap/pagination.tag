<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 分页
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="nonNav" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- pager: 翻页模式 --%>
<%@ attribute name="pager" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:if test="${not nonNav}"><nav></c:if>
    <ul <c:if test="${not empty _id}">id="${_id}"
        </c:if>class="<c:choose><c:when test="${pager}">pager</c:when><c:otherwise>pagination<c:choose><c:when test="${large}"> pagination-lg</c:when><c:when test="${small}"> pagination-sm</c:when></c:choose></c:otherwise></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
            <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
    </c:if>><jsp:doBody/></ul>
<c:if test="${not nonNav}"></nav></c:if>