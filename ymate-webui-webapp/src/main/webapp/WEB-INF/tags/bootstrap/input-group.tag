<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 输入框组容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- addon: 额外元素 --%>
<%@ attribute name="addon" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- btn: 额外元素的按钮 --%>
<%@ attribute name="btn" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 尺寸 --%>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:choose>
    <c:when test="${addon}"><span class="<c:choose><c:when test="${btn}">input-group-btn</c:when><c:otherwise>input-group-addon</c:otherwise></c:choose>"><jsp:doBody/></span></c:when>
    <c:otherwise>
        <bs:elements _id="${_id}" _style="${_style}" _attrs="${_attrs}">
            <jsp:attribute name="_class">input-group<c:choose><c:when test="${large}"> input-group-lg</c:when><c:when test="${small}"> input-group-sm</c:when></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if></jsp:attribute>
            <jsp:body>
                <jsp:doBody/>
            </jsp:body>
        </bs:elements>
    </c:otherwise>
</c:choose>