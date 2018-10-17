<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 基础页面模板
--%>
<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib uri="http://www.ymate.net/ymweb_bs" prefix="bs" %>
<ymweb:ui cleanup="false">
    <ymweb:layout cleanup="false">
        <bs:page title="@{title}">
            <jsp:attribute name="headerBody">
                @{meta}
                <%--<link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">--%>
                <link href="@{page.path}assets/bootstrap/styles/font-awesome.min.css" rel="stylesheet" type="text/css">
                <link href="@{page.path}assets/bootstrap/styles/simple-line-icons.min.css" rel="stylesheet" type="text/css">
                <link href="@{page.path}assets/bootstrap/styles/bootstrap.min.css" rel="stylesheet" type="text/css">
                <link href="@{page.path}assets/bootstrap/styles/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
                <link href="@{page.path}assets/bootstrap/styles/patch.css" rel="stylesheet" type="text/css">
                @{css}
                @{page.styles}
            </jsp:attribute>
            <jsp:body>
                @{body}
                <!--[if lt IE 9]>
                <script src="@{page.path}assets/bootstrap/scripts/respond.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/excanvas.min.js" type="text/javascript"></script>
                <![endif]-->
                <script src="@{page.path}assets/bootstrap/scripts/jquery.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/jquery-ui.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/bootstrap.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/holder.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/jquery.cookie.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/tmpl.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/validator.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/jquery.serializejson.min.js" type="text/javascript"></script>
                <script src="@{page.path}assets/bootstrap/scripts/md5.min.js" type="text/javascript"></script>
                @{script}
                @{page.scripts}
            </jsp:body>
        </bs:page>
    </ymweb:layout>
</ymweb:ui>