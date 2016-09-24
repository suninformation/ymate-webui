<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 门户窗体标题栏
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- title: 主标题 --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%-- subject: 子标题 --%>
<%@ attribute name="subject" rtexprvalue="true" type="java.lang.String" %>
<%-- icon: 标题图标 --%>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%-- 指定标签栏颜色风格 --%>
<%@ attribute name="fontGreenSharp" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fontRedSunglo" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fontYellowCasablanca" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fontPurplePlum" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fontBlueHoki" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fontGreyGallery" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fontYellowCrusta" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- bold: 标题文字加粗 --%>
<%@ attribute name="bold" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- uppercase: 标题英文大写 --%>
<%@ attribute name="uppercase" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- tabbable: 开启标题栏标签页样式 --%>
<%@ attribute name="tabbable" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div class="portlet-title<c:if test="${tabbable}"> tabbable-line</c:if>">
    <c:if test="${not empty title}"><div class="caption">
        <c:if test="${not empty icon}"><i class="${icon}<c:choose><c:when test="${fontGreenSharp}"> font-green-sharp</c:when><c:when test="${fontRedSunglo}"> font-red-sunglo</c:when><c:when test="${fontYellowCasablanca}"> font-yellow-casablanca</c:when><c:when test="${fontPurplePlum}"> font-purple-plum</c:when><c:when test="${fontBlueHoki}"> font-blue-hoki</c:when><c:when test="${fontGreyGallery}"> font-grey-gallery</c:when><c:when test="${fontYellowCrusta}"> font-yellow-crusta</c:when></c:choose>"></i></c:if>
        <c:choose><c:when test="${not empty subject}">
            <span class="caption-subject<c:choose><c:when test="${fontGreenSharp}"> font-green-sharp</c:when><c:when test="${fontRedSunglo}"> font-red-sunglo</c:when><c:when test="${fontYellowCasablanca}"> font-yellow-casablanca</c:when><c:when test="${fontPurplePlum}"> font-purple-plum</c:when><c:when test="${fontBlueHoki}"> font-blue-hoki</c:when><c:when test="${fontGreyGallery}"> font-grey-gallery</c:when><c:when test="${fontYellowCrusta}"> font-yellow-crusta</c:when></c:choose><c:if test="${bold}"> bold</c:if><c:if test="${uppercase}"> uppercase</c:if>">${title}</span>
            <span class="caption-helper">${subject}</span>
        </c:when><c:otherwise>${title}</c:otherwise></c:choose>
    </div></c:if>
    <jsp:doBody/>
</div>