<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 导航条
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
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
<bs:navbar inverse="${inverse}" staticTop="${staticTop}" fixedTop="${fixedTop}" fixedBottom="${fixedBottom}" container="${container}" fluid="${fluid}" collapseId="${collapseId}" toggleBtn="${toggleBtn}" headBody="${headBody}" emptyBody="${emptyBody}" brand="${brand}" href="${href}" _id="${_id}" _style="${_style}" _attrs="${_attrs}">
    <jsp:attribute name="_class">bs-docs-nav ${_class}</jsp:attribute>
    <jsp:body><jsp:doBody/></jsp:body>
</bs:navbar>