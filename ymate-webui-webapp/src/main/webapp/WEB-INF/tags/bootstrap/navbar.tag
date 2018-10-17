<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 导航条
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- inverse: 反色的导航条 --%>
<%@ attribute name="inverse" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- staticTop: 静止在顶部 --%>
<%@ attribute name="staticTop" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- fixedTop: 固定在顶部 --%>
<%@ attribute name="fixedTop" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- fixedBottom: 固定在底部--%>
<%@ attribute name="fixedBottom" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- container: 指定标签内是否生成container容器 --%>
<%@ attribute name="container" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- fluid: 用于100%宽度, 占据全部视口的容器, 默认为false --%>
<%@ attribute name="fluid" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="collapseId" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="toggleBtn" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="headBody" rtexprvalue="true" type="java.lang.String" %>
<%-- emptyBody: 指定标签内容为空 --%>
<%@ attribute name="emptyBody" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- brand: 标题名牌 --%>
<%@ attribute name="brand" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<nav <c:if test="${not empty _id}">id="${_id}"
     </c:if>class="navbar navbar-<c:choose><c:when test="${inverse}">inverse</c:when><c:otherwise>default</c:otherwise></c:choose><c:choose><c:when test="${staticTop}"> navbar-static-top</c:when><c:when test="${fixedTop}"> navbar-fixed-top</c:when><c:when test="${fixedBottom}"> navbar-fixed-bottom</c:when></c:choose><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
        <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if> role="navigation">
    <c:if test="${container or fluid}"><div class="container<c:if test="${fluid}">-fluid</c:if>"></c:if>
        <c:if test="${not empty headBody or not empty brand or not empty collapseId or not empty headBody}">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#${collapseId}">
                    <span class="sr-only">navigation</span>
                    <c:choose><c:when test="${not empty toggleBtn}">${toggleBtn}</c:when><c:otherwise>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </c:otherwise></c:choose>
                </button>
                <c:if test="${not empty brand}"><a class="navbar-brand" href="${func:defaultIfBlank(href, '#')}">${brand}</a></c:if>
                <c:if test="${not empty headBody}">${headBody}</c:if>
            </div>
        </c:if>
        <c:choose><c:when test="${emptyBody}"><jsp:doBody/></c:when><c:otherwise><div class="collapse navbar-collapse"<c:if test="${not empty collapseId}"> id="${collapseId}"</c:if>><jsp:doBody/></div></c:otherwise></c:choose>
    <c:if test="${container or fluid}"></div></c:if>
</nav>