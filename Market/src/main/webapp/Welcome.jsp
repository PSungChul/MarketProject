<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<link rel="stylesheet" href="css/css_Welcome.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
	<div id="div_welcome">
		<%
			String name = request.getParameter("name"); // 이
			
			String style[] = request.getParameterValues("style"); // 스타
			String style1 = ""; // 스타
			for( int i = 0; i < style.length; i++ ) { // 선택한 style 배열 --> String
				style1 += style[i] + " ";
			}
			
			String date = request.getParameter("date"); // 생년월일
			String birthyear = ""; // 생년월일 중 년도
			String birthmonth = ""; // 생년월일 중 월
			String birthday = ""; // 생년월일 중 일
			Date todayDate = new Date(); // 현제 날짜
		    SimpleDateFormat simpleYear = new SimpleDateFormat("yyyy"); // 현제 년도
		    SimpleDateFormat simpleMonth = new SimpleDateFormat("MM"); // 현제 달
		    SimpleDateFormat simpleDay = new SimpleDateFormat("dd"); // 현제 일
		    String stryear = simpleYear.format(todayDate); // 현제 년도 생성
		    String strmonth = simpleMonth.format(todayDate); // 현제 달 생성
		    String strday = simpleDay.format(todayDate); // 현제 일 생성
		    for ( int i = 0; i < 4; i++ ) { // 생년월일 중 년도
		    	birthyear += date.charAt(i);
			}
		    for ( int i = 5; i < 7; i++ ) { // 생년월일 중 월
		    	birthmonth += date.charAt(i);
			}
		    for ( int i = 8; i < 10; i++ ) { // 생년월일 중 일
		    	birthday += date.charAt(i);
			}
		    // String --> int
		    int iyear = Integer.parseInt(stryear);
		    int imonth = Integer.parseInt(strmonth);
		    int iday = Integer.parseInt(strday);
		    int ibirthyear = Integer.parseInt(birthyear);
		    int ibirthmonth = Integer.parseInt(birthmonth);
		    int ibirthday = Integer.parseInt(birthday);
		    
			out.println("<p>" + name + "님, 가입을 환영합니다." + "</p>");
			
			out.println("<p>" + "선택하신 스타일은 " + style1 + "이네요, 스타일대로 추천해드릴게요." + "</p>");
			
			if ( iyear - ibirthyear == 19 ) { // 년도만으로 만 나이가 19세일때
				if ( imonth >= ibirthmonth ) {
					if ( iday >= ibirthday ) {
						out.println("");
					} else { // 년도와 달은 통과, 일이 아래일시
						out.println("<p>" + "청소년 이시네요." + "</p>");
					}
				} else { // 년도는 통과, 달이 아래일시
					out.println("<p>" + "청소년 이시네요." + "</p>");
				}
			} else if ( iyear - ibirthyear < 19 ) { // 년도만으로 만 나이가 19세 아래일때
				out.println("<p>" + "청소년 이시네요." + "</p>");
			} else { // 년도만으로 만 나이가 19세 위일때
				out.println("");
			}
		%>
		<p><a class="btn btn-primary" href="Index.html">홈으로</a></p>
	</div>
</body>
</html>