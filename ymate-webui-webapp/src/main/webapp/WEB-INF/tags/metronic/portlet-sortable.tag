<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 门户窗体可拖拽容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- emptyBody: 指定生成空容器，用于容器内容为空时可正常拖拽 --%>
<%@ attribute name="emptyBody" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose><c:when test="${emptyBody}"><div class="portlet portlet-sortable-empty"></div></c:when><c:otherwise>
    <div <c:if test="${not empty _id}">id="${_id}" </c:if>class="column sortable<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
        <jsp:doBody/>
    </div>
</c:otherwise></c:choose>