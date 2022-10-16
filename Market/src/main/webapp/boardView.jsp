<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/css_boardView.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
	<form action="Index.html">
		<ul id="boardView_ul">
			<%
				String category = request.getParameter("category");
				String title = request.getParameter("title");
				String writer = request.getParameter("writer");
				String date = request.getParameter("date");
				String content = request.getParameter("content");
				
				out.println("<li id='category_st'>" + "<b>" + category + "</b>" + "</li>");
				out.println("<li>" + "<h2>" + title + "</h2>" + "</li>");
				out.println("<li id='writer_st'>" + "<i>" + writer + "</i>" + "</li>");
				out.println("<li id='date_st'>" + date + "</li>");
				out.println("<li id='line'>" + "</li>");
				out.println("<li>" + content + "</li>");
			%>
		</ul>
		<input id="btn_home" type="submit" value="홈으로">
	</form>
</body>
</html>