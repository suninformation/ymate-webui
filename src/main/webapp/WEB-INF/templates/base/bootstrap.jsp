<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 基本页面模板
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<ymweb:ui cleanup="false">
    <ymweb:layout cleanup="false">
        <bs:page title="@{title}" >
            <jsp:attribute name="headerBody">
                @{meta}
                <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
                <link href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
                <link href="//cdn.bootcss.com/simple-line-icons/2.3.2/css/simple-line-icons.min.css" rel="stylesheet" type="text/css">
                <link href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
                <link href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
                @{css}
                @{page.styles}
            </jsp:attribute>
            <jsp:body>
                @{body}
                <!--[if lt IE 9]>
                <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js" type="text/javascript"></script>
                <script src="//cdn.bootcss.com/flot/0.8.3/excanvas.min.js" type="text/javascript"></script>
                <![endif]-->
                <script src="//cdn.bootcss.com/jquery/1.11.2/jquery.min.js" type="text/javascript"></script>
                <script src="//cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>

                <script src="//cdn.bootcss.com/holder/2.9.3/holder.min.js" type="text/javascript"></script>
                @{script}
            </jsp:body>
        </bs:page>
    </ymweb:layout>
</ymweb:ui>