<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 门户窗体控制按钮容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/metronic" prefix="m" %>
<%-- Attributes --%>
<%@ attribute name="btnCloudUpload" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="btnConfig" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="btnFullscreen" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="btnRecycleBin" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="configModalId" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="actions<c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"<c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
    <jsp:doBody/>
    <c:if test="${btnCloudUpload or btnConfig or btnFullscreen or btnRecycleBin}">
        <c:if test="${btnCloudUpload}"><m:button iconOnly="true" style="default" circle="true" icon="icon-cloud-upload"/> </c:if>
        <c:if test="${btnRecycleBin}"><m:button iconOnly="true" style="default" circle="true" icon="icon-trash"/> </c:if>
        <c:if test="${btnConfig}"><m:button iconOnly="true" style="default" circle="true" icon="icon-wrench" modalId="${func:defaultIfBlank(configModalId, 'portlet-config')}"/> </c:if>
        <c:if test="${btnFullscreen}"><m:button iconOnly="true" style="default" circle="true" _class="fullscreen"/> </c:if>
    </c:if>
</div>