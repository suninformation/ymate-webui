<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 表单控件--列表项
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.ymate.net/ymweb_fn" prefix="func" %>
<%-- Attributes --%>
<%@ attribute name="value" rtexprvalue="true" type="java.lang.String" %>

<%@ attribute name="selected" rtexprvalue="true" type="java.lang.Boolean" %>
<%@ attribute name="disabled" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<option value="${value}" <c:if test="${disabled}"> disabled</c:if><c:if test="${selected}"> selected</c:if>><jsp:doBody/></option>