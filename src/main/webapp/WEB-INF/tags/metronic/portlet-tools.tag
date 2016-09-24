<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 门户窗体工具条
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%-- btnCollapse: 折叠/展开按钮 --%>
<%@ attribute name="btnCollapse" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- btnConfig: 配置按钮 --%>
<%@ attribute name="btnConfig" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- btnReload: 刷新按钮 --%>
<%@ attribute name="btnReload" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- btnFullscreen: 全屏按钮 --%>
<%@ attribute name="btnFullscreen" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- btnRemove: 关闭按钮 --%>
<%@ attribute name="btnRemove" rtexprvalue="true" type="java.lang.Boolean" %>

<%-- configModalId: 指定btnConfig按钮绑定的模态框ID，默认值：portlet-config --%>
<%@ attribute name="configModalId" rtexprvalue="true" type="java.lang.String" %>
<%-- dataLoad: 是否初始化页面时自动AJAX数据加载 --%>
<%@ attribute name="dataLoad" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- dataUrl: 指定预加载数据AJAX地址 --%>
<%@ attribute name="dataUrl" rtexprvalue="true" type="java.lang.String" %>
<%-- dataErrorDisplay: 展示错误提示信息的方式，可选值：notific8|toastr --%>
<%@ attribute name="dataErrorDisplay" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:if test="${btnCollapse or btnConfig or btnReload or btnFullscreen or btnRemove}"><div class="tools">
    <c:if test="${btnCollapse}"><a href="#" class="collapse"></a> </c:if>
    <c:if test="${btnConfig}"><a href="${func:defaultIfBlank(configModalId, '#portlet-config')}" data-toggle="modal" class="config"></a> </c:if>
    <c:if test="${btnReload}"><a href="#" class="reload"<c:if test="${dataLoad}"> data-load="true"</c:if><c:if test="${not empty dataUrl}"> data-url="${dataUrl}"<c:if test="${not empty dataErrorDisplay}"> data-error-display="${dataErrorDisplay}"</c:if></c:if>></a> </c:if>
    <c:if test="${btnFullscreen}"><a href="#" class="fullscreen"></a> </c:if>
    <c:if test="${btnRemove}"><a href="#" class="remove"></a> </c:if>
</div></c:if>