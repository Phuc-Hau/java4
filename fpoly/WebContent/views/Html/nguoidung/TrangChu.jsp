<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<jsp:include page="../card/video.jsp">
	<jsp:param value="${ite.titile}" name="img"/>
	<jsp:param value="${ite.video}" name="name"/>
</jsp:include>