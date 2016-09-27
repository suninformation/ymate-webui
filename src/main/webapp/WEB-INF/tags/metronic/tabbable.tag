<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 扩展样式标签容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%-- line和custom用于指定标签按钮的风格样式 --%>
<%@ attribute name="line" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="custom" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- below: 指定标签页在下面 --%>
<%@ attribute name="below" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- justified: 当custom=true时，两端对齐 --%>
<%@ attribute name="justified" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="tabdrop" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}"
     </c:if>class="tabbable<c:choose><c:when test="${line}">-line</c:when><c:when test="${custom}">-custom<c:if test="${justified}"> nav-justified</c:if></c:when></c:choose><c:if test="${tabdrop}"> tabbable-tabdrop</c:if><c:if test="${below}"> tabs-below</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
        <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
</c:if>>
    <jsp:doBody/>
</div>