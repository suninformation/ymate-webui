<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 基础管理页面模板
--%>
<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib uri="http://www.ymate.net/ymweb_bs" prefix="bs" %>
<ymweb:ui src="webui/_bootstrap" cleanup="false">
    <ymweb:property name="page.styles">
        @{css}
        <link href="@{page.path}assets/bootstrap/_components/Ionicons/css/ionicons.min.css"  rel="stylesheet" type="text/css">
        <link href="@{page.path}assets/adminLTE/css/AdminLTE.min.css"  rel="stylesheet" type="text/css">
        <link href="@{page.path}assets/adminLTE/css/_all-skins.min.css"  rel="stylesheet" type="text/css">
        @{page.styles}
    </ymweb:property>
    <ymweb:property name="page.scripts">
        @{script}
        <script src="@{page.path}assets/bootstrap/_components/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="@{page.path}assets/bootstrap/_components/fastclick/fastclick.js" type="text/javascript"></script>
        <script src="@{page.path}assets/adminLTE/AdminLTE.min.js" type="text/javascript"></script>
        @{page.scripts}
    </ymweb:property>

    <ymweb:layout cleanup="false">
        <div class="wrapper">@{body}</div>
    </ymweb:layout>
</ymweb:ui>