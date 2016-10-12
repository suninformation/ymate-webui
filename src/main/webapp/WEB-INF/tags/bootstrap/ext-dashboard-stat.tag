<%--
  User: 刘镇 (suninformation@163.com)
  Desc: SB-Admin2 -- Dashboard Stat
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- style: 指定面板风格样式，可选值：default|primary|success|info|warning|danger|green|red|yellow --%>
<%@ attribute name="style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="text" rtexprvalue="true" type="java.lang.String" %>
<%-- icon: Font Awesome Icons --%>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="href" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="linkText" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="upperCase" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
    <div class="panel panel-${func:defaultIfBlank(style, 'default')}">
        <div class="panel-heading">
            <div class="row">
                <div class="col-xs-3">
                    <i class="fa fa-${func:defaultIfBlank(icon, 'info-circle')} fa-fw fa-5x"></i>
                </div>
                <div class="col-xs-9 text-right">
                    <div class="huge"><jsp:doBody/></div>
                    <div>${text}</div>
                </div>
            </div>
        </div>
        <a href="${func:defaultIfBlank(href, '#')}">
            <div class="panel-footer">
                <span class="pull-left<c:if test="${upperCase}"> text-uppercase</c:if>">${func:defaultIfBlank(linkText, 'View More')}</span>
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                <div class="clearfix"></div>
            </div>
        </a>
    </div>
</div>