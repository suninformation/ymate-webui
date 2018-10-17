<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 抽屉项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- parentId: 所属抽屉组件ID --%>
<%@ attribute name="parentId" rtexprvalue="true" type="java.lang.String" %>
<%-- collapseId: 折叠面板ID，若为空则采用UUID自动生成 --%>
<%@ attribute name="collapseId" rtexprvalue="true" type="java.lang.String" %>
<%-- toggleStyled: 是否显示折叠开/关图标 --%>
<%@ attribute name="toggleStyled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- in: 折叠面板是否展开，默认为收起 --%>
<%@ attribute name="in" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- bodyClass: 折叠面板自定义class属性 --%>
<%@ attribute name="bodyClass" rtexprvalue="true" type="java.lang.String" %>
<%-- bodyClass: 折叠面板自定义style属性 --%>
<%@ attribute name="bodyStyle" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:if test="${empty collapseId}"><c:set var="collapseId" value="${func:uuid()}"/></c:if>
<bs:panel _id="${_id}" _class="${_class}" _style="${_style}" _attrs="${_attrs}" style="${style}" nobody="true">
    <jsp:attribute name="title"><a class="accordion-toggle<c:if test="${toggleStyled}"> accordion-toggle-styled<c:if test="${not in}"> collapsed</c:if></c:if>" data-toggle="collapse"<c:if test="${not empty parentId}"> data-parent="#${parentId}"</c:if> href="#${collapseId}">${func:defaultIfBlank(title, "&nbsp;")}</a></jsp:attribute>
    <jsp:body>
        <div id="${collapseId}" class="panel-collapse<c:choose><c:when test="${in}"> in</c:when><c:otherwise> collapse</c:otherwise></c:choose>">
            <div class="panel-body <c:if test="${not empty bodyClass}">${bodyClass}</c:if>"<c:if test="${not empty bodyStyle}"> style="${bodyStyle}"</c:if>><jsp:doBody/></div>
        </div>
    </jsp:body>
</bs:panel>