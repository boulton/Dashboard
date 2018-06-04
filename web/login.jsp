<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>footer</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div class="header"> <jsp:include page="header.jsp"></jsp:include> </div>

	<div class="col-md-2 col-md-offset-5">
  <form action="/Dash/login.do" method="post">
  Email:<br>
  <input type="text" name="email" placeholder="Email">
  <br>
  Mot De Passe:<br>
  <input type="text" name="password" placeholder="MDP">
  <br><br>
  <input type="submit" value="Submit">
</form> 
</div>

	<%-- --%>
	<div class="header"><jsp:include page="footer.jsp"></jsp:include>	</div>
</body>
</html>