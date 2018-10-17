<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 磁贴
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- doubles: 双倍大小 --%>
<%@ attribute name="doubles" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- down: 双倍大小纵向 --%>
<%@ attribute name="down" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- image: 是否背景图模式 --%>
<%@ attribute name="image" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- selected: 是否被选中状态 --%>
<%@ attribute name="selected" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- corner: 显示角标 --%>
<%@ attribute name="corner" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- check: 显示勾选符号 --%>
<%@ attribute name="check" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- bgColor: 背景色，默认为bg-blue-hoki --%>
<%@ attribute name="bgColor" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="name" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="num" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="tile<c:if test="${doubles}"> double<c:if test="${down}">-down</c:if></c:if><c:if test="${image}"> image</c:if><c:if test="${selected}"> selected</c:if> bg-${func:defaultIfBlank(bgColor, 'blue-hoki')}<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <div class="tile-body"><jsp:doBody/></div>
    <c:if test="${corner}"><div class="corner"></div></c:if>
    <c:if test="${check}"><div class="check"></div></c:if>
    <c:if test="${not empty name or not empty num}">
        <div class="tile-object">
            <c:if test="${not empty name}"><div class="name">${name}</div></c:if>
            <c:if test="${not empty num}"><div class="number">${num}</div></c:if>
        </div>
    </c:if>
</div>