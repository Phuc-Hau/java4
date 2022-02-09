<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

	<c:forEach var="ite" items="${video}">
		<jsp:include page="../card/video.jsp">
			<jsp:param value="${ite.titile}" name="titile"/>
			<jsp:param value="${ite.id}" name="id"/>
		</jsp:include>
	</c:forEach>


