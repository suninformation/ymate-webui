<%--
  User: 刘镇 (suninformation@163.com)
  Desc: 页脚
--%>
<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Attributes --%>
<%@ attribute name="hideScrollTop" rtexprvalue="true" type="java.lang.Boolean" %>
<%-- Tag Body --%>
<div class="page-footer">
    <div class="page-footer-inner"><jsp:doBody/></div>
    <c:if test="${not hideScrollTop}"><div class="scroll-to-top"><i class="icon-arrow-up-circle"></i></div></c:if>
</div>