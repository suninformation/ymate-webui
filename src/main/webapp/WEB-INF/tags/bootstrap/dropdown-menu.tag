<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 下拉菜单容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="pull" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_tag" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<${func:defaultIfBlank(_tag, 'div')} <c:if test="${not empty _id}"> id="${_id}"
     </c:if> class="dropdown-menu<c:if test="${right}"><c:choose><c:when test="${pull}"> pull-right</c:when><c:otherwise> dropdown-menu-right</c:otherwise></c:choose></c:if><c:if test="${left}"><c:choose><c:when test="${pull}"> pull-left</c:when><c:otherwise> dropdown-menu-left</c:otherwise></c:choose></c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
        <c:if test="${not empty _style}"> style="${_style}"</c:if> role="menu"<c:if
        test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <jsp:doBody/>
</${func:defaultIfBlank(_tag, 'div')}>