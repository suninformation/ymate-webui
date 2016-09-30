<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 布局容器
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<%-- Attributes --%>
<%-- fluid: 用于100%宽度, 占据全部视口的容器, 默认为false --%>
<%@ attribute name="fluid" rtexprvalue="true" type="java.lang.Boolean" %>

<%@ attribute name="_id" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_style" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_class" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="_attrs" rtexprvalue="true" type="java.lang.String" %>
<%-- Tag Body --%>
<bs:container fluid="${fluid}" _id="${_id}" _attrs="${_attrs}" _style="${_style}">
    <jsp:attribute name="_class">bs-doc-container ${_class}</jsp:attribute>
    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</bs:container>