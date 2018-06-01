<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Date"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="tp" uri="/WEB-INF/tpTag.tld"%>

<!-- Dossier tag -->
<%@ taglib tagdir="/WEB-INF/tags/" prefix="h" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		
		
		<title>Insert title here</title>
		
	</head>
	<body>
		<c:set var="maVariable2" value="valeur2" scope="request" />
		<% request.setAttribute("blabla", "valeur");%>
		
		<div class="header"> <jsp:include page="header.jsp"></jsp:include> </div>
	
	<!------ DASHBOARDs -------->
   <nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</a>
    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a>
  </div>
</nav>

<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
      <!-- PLACEHOLDER -->
      <iframe width="560" height="315" src="https://www.youtube.com/embed/xS6pwQ1Gs2s?showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
      <!-- /PLACEHOLDER -->
  </div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
      <!-- PLACEHOLDER -->
      <iframe height="800px" width="800" src="mining.html"></iframe>
      <!-- /PLACEHOLDER -->
  </div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
</div>
    
   <!------ /DASHBOARDs -------->
		
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>