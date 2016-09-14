<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 模态框
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="title" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="hideCloseBtn" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="fade" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- dialogClass: 自定义对话窗体class样式 --%>
<%@ attribute name="dialogClass" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="nonStatic" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="footer" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<div <c:if test="${not empty _id}">id="${_id}" </c:if>class="modal<c:if test="${fade}"> fade</c:if>" tabindex="-1" role="dialog" aria-hidden="true" <c:if test="${not nonStatic}"> data-backdrop="static" data-keyboard="false"</c:if>>
    <div class="modal-dialog<c:if test="${small}"> modal-sm</c:if><c:if test="${large}"> modal-lg</c:if><c:if test="${not empty dialogClass}"><%=" "%>${dialogClass}</c:if>">
        <div class="modal-content">
            <c:if test="${not hideCloseBtn or not empty title}"><div class="modal-header">
                <c:if test="${not hideCloseBtn}"><button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button></c:if>
                <c:if test="${not empty title}"><h4 class="modal-title">${title}</h4></c:if>
            </div></c:if>
            <div class="modal-body"><jsp:doBody/></div>
            <c:if test="${not empty footer}"><div class="modal-footer">
                ${footer}
            </div></c:if>
        </div>
    </div>
</div>
