<%--
  User: 刘镇 (suninformation@163.com)
  Desc: Carousel
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="indicators" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="controls" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div id="${_id}" class="carousel slide" data-ride="carousel">
    <c:if test="${indicators > 0}">
        <ol class="carousel-indicators">
            <c:forEach var="_idx" begin="0" end="${indicators - 1}">
                <li data-target="#${_id}" data-slide-to="${_idx}"<c:if test="${_idx == 0}"> class="active"</c:if>></li>
            </c:forEach>
        </ol>
    </c:if>
    <div class="carousel-inner" role="listbox"><jsp:doBody/></div>
    <c:if test="${controls}">
        <a class="left carousel-control" href="#${_id}" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#${_id}" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </c:if>
</div>