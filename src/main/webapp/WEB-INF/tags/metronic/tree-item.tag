<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 树节点项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ tag import="org.apache.commons.lang.StringUtils" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="opened" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="selected" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="icon" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="type" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<%
if ((opened != null && opened) || (selected != null && selected) || (disabled != null && disabled) || StringUtils.isNotBlank(icon) || StringUtils.isNotBlank(type)) {
    StringBuilder _data = new StringBuilder();
    if (opened != null && opened) {
        _data.append("\"opened\":true");
    }
    if (selected != null && selected) {
        if (_data.length() > 0) {
            _data.append(",");
        }
        _data.append("\"selected\":true");
    }
    if (disabled != null && disabled) {
        if (_data.length() > 0) {
            _data.append(",");
        }
        _data.append("\"disabled\":true");
    }
    if (StringUtils.isNotBlank(icon)) {
        if (_data.length() > 0) {
            _data.append(",");
        }
        _data.append("\"icon\":\"").append(icon).append("\"");
    }
    if (StringUtils.isNotBlank(type)) {
        if (_data.length() > 0) {
            _data.append(",");
        }
        _data.append("\"type\":\"").append(type).append("\"");
    }
    if (_data.length() > 0) {
        if (_attrs == null) {
            _attrs = "";
        }
        _attrs += " data-jstree='{" + _data.toString() + "}'";
        jspContext.setAttribute("_attrs", _attrs);
    }
}
%>
<li <c:if test="${not empty _id}">id="${_id}"</c:if><c:if test="${not empty _class}"> class="${_class}"</c:if><c:if test="${not empty _style}"> style="${_style}"</c:if><c:if test="${not empty _attrs}"><%=" "%>${_attrs}</c:if>><jsp:doBody/></li>