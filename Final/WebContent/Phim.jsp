<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta html-equiv ="Content-Type" content="text/html; charset= UTF-8">
<title>Phim</title>
</head>
<body>
	<p>
		Tên: ${ ten } <br/>
		Tuổi: ${ tuoi }
	</p>
	
	<!-- <a href="cineServlet?ten=b&tuoi=20">lấy info</a> -->
	<form action="cineServlet" method="post">
		<input type="text" name="ten"/>
		<input name="tuoi"/>
		<button>Submit</button>
	</form> 
	<h1>${ text }</h1>
</body>
</html>