<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 文本
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="navbar" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="left" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="right" rtexprvalue="true" type="java.lang.Boolean" %>

<%-- style: 指定文字风格样式, 可选值: muted|primary|success|info|warning|danger --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%-- bgStyle: 指定文字背景风格样式, 可选值: primary|success|info|warning|danger --%>
<%@ attribute name="bgStyle" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="link" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%-- 文本对齐 --%>
<%@ attribute name="alignLeft" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="alignRight" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="alignCenter" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- justified: 两端对齐的标签页--%>
<%@ attribute name="justified" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="nowrap" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- 改变大小写 --%>
<%@ attribute name="lowercase" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="uppercase" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="capitalize" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- lead: 让段落突出显示 --%>
<%@ attribute name="lead" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_tag" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<${func:defaultIfBlank(_tag, 'p')} <c:if test="${not empty _id}"> id="${_id}"
   </c:if> class="<c:if test="${navbar}">navbar-text<c:choose><c:when test="${left}"> navbar-left</c:when><c:when test="${right}"> navbar-right</c:when></c:choose></c:if><c:if test="${alignLeft}"> text-left</c:if><c:if test="${alignRight}"> text-right</c:if><c:if test="${alignCenter}"> text-center</c:if><c:if test="${justified}"> text-justified</c:if><c:if test="${nowrap}"> text-nowrap</c:if><c:if test="${lowercase}"> text-lowercase</c:if><c:if test="${uppercase}"> text-uppercase</c:if><c:if test="${capitalize}"> text-capitalize</c:if><c:if test="${not empty style}"> text-${style}</c:if><c:if test="${not empty bgStyle}"> bg-${style}</c:if><c:if test="${lead}"> lead</c:if><c:if test="${not empty _class}"><%=" "%>${_class}</c:if>"
        <c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}
</c:if>><c:choose><c:when test="${link}"><a href="${func:defaultIfBlank(href, '#')}"<c:if
        test="${navbar}"> class="navbar-link"</c:if>>
    <jsp:doBody/>
</a></c:when><c:otherwise><jsp:doBody/></c:otherwise></c:choose></${func:defaultIfBlank(_tag, 'p')}>
