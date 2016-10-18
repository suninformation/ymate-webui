<%--
  User: 刘镇 (suninformation@163.com)
  Desc: bootstrap-filestyle -- Bootstrap FileStyle is a quick and simple plugin to help style your form's file upload inputs.
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%@ attribute name="label" rtexprvalue="true" type="java.lang.String" %>
<%-- labelWidth: 标签的宽度, 大于0时将水平排列 --%>
<%@ attribute name="labelWidth" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="labelSrOnly" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="name" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="placeholder" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="hideInput" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hideIcon" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="hideBadge" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="btnBefore" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="btnText" rtexprvalue="true" type="java.lang.String" %>
<%-- style: 指定按钮风格样式, 可选值: default|primary|success|warning|danger --%>
<%@ attribute name="btnStyle" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="btnIcon" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="attrs" rtexprvalue="true" type="java.lang.String" %>

<%-- helpBlock: 辅助文本 --%>
<%@ attribute name="helpBlock" rtexprvalue="true" type="java.lang.String" %>
<%-- feedbackIcon: 额外的图标 --%>
<%@ attribute name="feedbackIcon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- small: 控件尺寸 - 小 --%>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- large: 控件尺寸 - 大 --%>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:form-control _id="${_id}" _class="${_class}"  nonControl="true" type="file" name="${name}" label="${label}" labelWidth="${labelWidth}" labelSrOnly="${labelSrOnly}" feedbackIcon="${feedbackIcon}" helpBlock="${helpBlock}">
    <jsp:attribute name="_style">filestyle<c:if test="${not empty style}"><%=" "%>${style}</c:if></jsp:attribute>
    <jsp:attribute name="_attrs">
        <c:if test="${hideInput}"> data-input="false"</c:if>
        <c:if test="${hideBadge}"> data-badge="false"</c:if>
        <c:if test="${hideIcon}"> data-icon="false"</c:if>
        <c:if test="${not empty btnIcon}"> data-iconName="glyphicon glyphicon-${btnIcon}"</c:if>
        <c:if test="${not empty btnText}"> data-buttonText="${btnText}"</c:if>
        <c:if test="${not empty btnStyle}"> data-buttonName="btn-${btnStyle}"</c:if>
        <c:if test="${btnBefore}"> data-buttonBefore="true"</c:if>
        <c:if test="${disabled}"> data-disabled="true"</c:if>
        <c:choose><c:when test="${small}"> data-size="sm"</c:when><c:when test="${large}"> data-size="lg"</c:when></c:choose>
        <c:if test="${not empty placeholder}"> data-placeholder="${placeholder}"</c:if>
        <c:if test="${not empty attrs}"><%=" "%>${attrs}</c:if>
    </jsp:attribute>
</bs:form-control>