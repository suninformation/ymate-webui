<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 磁贴内容
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- title: 标题 --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%-- icon: 图标 --%>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%-- image: 图片URL --%>
<%@ attribute name="image" rtexprvalue="true" type="java.lang.String" %>
<%-- imgWidth: 图片宽度 --%>
<%@ attribute name="imgWidth" rtexprvalue="true" type="java.lang.Integer" %>
<%-- imgHeight: 图片高度 --%>
<%@ attribute name="imgHeight" rtexprvalue="true" type="java.lang.Integer" %>
<%-- right: 图片右侧显示 --%>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose><c:when test="${not empty icon}"><i class="${icon}"></i></c:when><c:otherwise>
    <div <c:if test="${not empty _id}">id="${_id}" </c:if><c:if test="${not empty _class}">class="${_class}"</c:if><c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
        <c:if test="${not empty image}"><img src="${image}"<c:if test="${imgWidth > 0}"> width="${imgWidth}"</c:if><c:if test="${imgHeight > 0}"> height="${imgHeight}"</c:if><c:if test="${right}"> class="pull-right"</c:if> alt=""></c:if>
        <c:choose><c:when test="${not empty title}">
            <c:if test="${not empty title}"><h3>${title}</h3></c:if>
            <p><jsp:doBody/></p>
        </c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose>
    </div>
</c:otherwise></c:choose>