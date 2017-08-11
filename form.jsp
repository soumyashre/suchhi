<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/first.js"></script>
</head>
<body>
	<form action="./changes" id="myform" method="post">
		Name:<input type="text" name="shopname" id="shopname"
			value='<%=request.getAttribute("shopname")%>'><br> <br>
		Id:<input type="text" readonly="readonly" name="shopid" id="shopid"
			value='<%=request.getAttribute("shopid")%>'><br> <br>
		Level:<input type="text" name="level" id="level"
			value='<%=request.getAttribute("level")%>'><br> <br>
		Owner:<input type="text" name="ownerid" id="ownerid"
			value='<%=request.getAttribute("ownerid")%>'><br>
		<p>Items are</p>
		<%int iter=1;%>
		<c:forEach items="${list}" var="emp">
			<input type="text" name="item<%=iter%>" id="item<%=iter%>"
				value='${emp}'>
			<%iter++;%>
		</c:forEach>
		<input type="hidden" value='<%=iter%>' id="itemscount"> <input
			type="button" value="+" id="additembutton">
			<input type="button" value="-" id="deleteitembutton">
		<table>

			<tr id="Row1">
				<td class="space"></td>
			</tr>

			<tr id="Row2">
			</tr>

		</table>

		<input type="submit" value="submit">
	</form>

</body>
</html>
