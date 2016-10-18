<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表单控件
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- type: 控件类型, 可选值: custom|static|text|password|textarea|select|datetime... --%>
<%@ attribute name="type" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="label" rtexprvalue="true" type="java.lang.String" %>
<%-- labelWidth: 标签的宽度, 大于0时将水平排列 --%>
<%@ attribute name="labelWidth" rtexprvalue="true" type="java.lang.Integer" %>
<%@ attribute name="labelSrOnly" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="name" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="placeholder" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="value" rtexprvalue="true" type="java.lang.String" %>
<%-- nonControl: 指定表单控件元素不添加form-control样式--%>
<%@ attribute name="nonControl" rtexprvalue="true" type="java.lang.Boolean" %>

<%-- rows: 当type=textarea时用于指定textarea行数 --%>
<%@ attribute name="rows" rtexprvalue="true" type="java.lang.Integer" %>
<%-- multiple: 当type=select时用于指定是否多选模式 --%>
<%@ attribute name="multiple" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- helpBlock: 辅助文本 --%>
<%@ attribute name="helpBlock" rtexprvalue="true" type="java.lang.String" %>
<%-- feedbackIcon: 额外的图标 --%>
<%@ attribute name="feedbackIcon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- small: 控件尺寸 - 小 --%>
<%@ attribute name="small" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- large: 控件尺寸 - 大 --%>
<%@ attribute name="large" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<c:if test="${not empty label}"><label class="control-label<c:if test="${labelWidth > 0}"> col-sm-${labelWidth} </c:if><c:if test="${labelSrOnly}"> sr-only</c:if>" <c:if test="${not empty _id and type != 'static'}"> for="${_id}"</c:if>>${label}</label></c:if>
<c:if test="${labelWidth > 0}"><div class="col-sm-${12-labelWidth}"></c:if>
<c:choose>
    <c:when test="${empty type or type eq 'custom' or type eq 'checkbox' or type eq 'radio'}">
        <jsp:doBody/>
    </c:when>
    <c:when test="${type eq 'static'}">
        <p <c:if test="${not empty _id}"> id="${_id}"</c:if> class="form-control-static<c:if test="${not empty _style}">${" ".concat(_style)}</c:if>"<c:if test="${not empty _attrs}">${" ".concat(_attrs)}</c:if>>${value}</p>
        <jsp:doBody/>
    </c:when>
    <c:when test="${type eq 'textarea'}">
        <textarea class="<c:if test="${not nonControl}">form-control</c:if><c:choose><c:when test="${large}"> input-lg</c:when><c:when test="${small}"> input-sm</c:when></c:choose><c:if test="${not empty _style}">${" ".concat(_style)}</c:if>"<c:if test="${not empty _id}"> id="${_id}"</c:if><c:if test="${not empty name}"> name="${name}"</c:if><c:if test="${rows > 0}"> rows="${rows}"</c:if><c:if test="${not empty placeholder}"> placeholder="${placeholder}"</c:if><c:if test="${disabled}"> disabled</c:if><c:if test="${not empty _attrs}">${" ".concat(_attrs)}</c:if>>${value}<jsp:doBody/></textarea>
    </c:when>
    <c:when test="${type eq 'select'}">
        <select class="<c:if test="${not nonControl}">form-control</c:if><c:choose><c:when test="${large}"> input-lg</c:when><c:when test="${small}"> input-sm</c:when></c:choose><c:if test="${not empty _style}">${" ".concat(_style)}</c:if>"<c:if test="${not empty _id}"> id="${_id}"</c:if><c:if test="${multiple}"> multiple</c:if><c:if test="${disabled}"> disabled</c:if><c:if test="${not empty _attrs}">${" ".concat(_attrs)}</c:if>>${value}<jsp:doBody/></select>
    </c:when>
    <c:otherwise>
        <input type="${type}" class="<c:if test="${not nonControl}">form-control</c:if><c:choose><c:when test="${large}"> input-lg</c:when><c:when test="${small}"> input-sm</c:when></c:choose><c:if test="${not empty _style}">${" ".concat(_style)}</c:if>"<c:if test="${not empty _id}"> id="${_id}"</c:if><c:if test="${not empty name}"> name="${name}"</c:if><c:if test="${not empty value}"> value="${value}"</c:if><c:if test="${not empty placeholder}"> placeholder="${placeholder}"</c:if><c:if test="${disabled}"> disabled</c:if><c:if test="${not empty _attrs}">${" ".concat(_attrs)}</c:if>>
        <jsp:doBody/>
    </c:otherwise>
</c:choose>
<c:if test="${not empty feedbackIcon}"><span class="${feedbackIcon} form-control-feedback"></span></c:if>
<c:if test="${not empty helpBlock}"><span class="help-block">${helpBlock}</span></c:if>
<c:if test="${labelWidth > 0}"></div></c:if>