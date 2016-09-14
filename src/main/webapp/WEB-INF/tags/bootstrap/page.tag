<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 页面
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="viewport" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="keywords" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="description" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="author" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="lang" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="charset" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="headerBody" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="${func:defaultIfBlank(lang, 'en')}" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="${func:defaultIfBlank(lang, 'en')}" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="${func:defaultIfBlank(lang, 'en')}" class="no-js">
<!--<![endif]-->
<head>
    <meta charset="${func:defaultIfBlank(charset, 'utf-8')}">
    <title>${title}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="${func:defaultIfBlank(viewport, 'width=device-width, initial-scale=1')}">
    <meta name="keywords" content="${keywords}">
    <meta name="description" content="${description}">
    <meta name="author" content="${author}">
    ${headerBody}
</head>
<body <c:if test="${not empty _class}">class="${_class}"</c:if><c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>>
<jsp:doBody/>
</body>
</html>