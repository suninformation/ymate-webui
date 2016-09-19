<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 模态框
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>

<%@ attribute name="scroller" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollerHeight" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="scrollerAlwaysVisible" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollerRailVisible" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="scrollerRailColor" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="scrollerHandleColor" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="draggable" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="full" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="hideCloseBtn" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fade" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="nonStatic" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="footer" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:modal _id="${_id}" _style="${_style}" _attrs="${_attrs}" title="${title}" hideCloseBtn="${hideCloseBtn}" fade="${fade}" small="${small}" large="${large}" nonStatic="${nonStatic}" footer="${footer}">
    <jsp:attribute name="_class">
         ${_class}<c:if test="${scroller}"> modal-scroll</c:if><c:if test="${draggable}"> draggable-modal</c:if><c:if test="${small}"> bs-modal-sm</c:if><c:if test="${large}"> bs-modal-lg</c:if>
    </jsp:attribute>
    <jsp:attribute name="dialogClass"><c:if test="${full}"> modal-full</c:if></jsp:attribute>
    <jsp:body>
        <c:choose><c:when test="${scroller}">
            <div class="scroller" <c:if test="${scrollerHeight > 0}">style="height:${scrollerHeight}px"</c:if><c:if test="${scrollerAlwaysVisible}"> data-always-visible="1"</c:if><c:if test="${scrollerRailVisible}"> data-rail-visible="1"</c:if><c:if test="${not empty scrollerRailColor}"> data-rail-color="${scrollerRailColor}"</c:if><c:if test="${not empty scrollerHandleColor}"> data-handle-color="${scrollerHandleColor}"</c:if>>
                <jsp:doBody/>
            </div>
        </c:when>
            <c:otherwise><jsp:doBody/></c:otherwise></c:choose>
    </jsp:body>
</bs:modal>
