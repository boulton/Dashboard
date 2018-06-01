<%@ tag language="java" pageEncoding="utf-8"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>

<jsp:doBody var="var1" scope="request"></jsp:doBody>


<%	Map<String, String[]> a = request.getParameterMap();
			System.out.println("get" + a.entrySet());
			for (Map.Entry<String, String[]> entre : a.entrySet()) {
				out.println(entre.getKey() + "/" + entre.getValue());
			}
		%>
		<%
			Enumeration<String> param = request.getAttributeNames();
			while (param.hasMoreElements()) {
				String clef = param.nextElement();
				out.println(clef + " :");
				out.println(request.getAttribute(clef));
				out.print("<br>");
			}
		%>

	<hr>
		<h1>Date : <tp:date></tp:date> </h1>
		<hr>
	
		<c:forEach items="${requestScope}" var="requestParam">
			<p>
				<c:out value="${requestParam.key}" />
				<c:out value="${requestParam.value}" />
			</p>
		</c:forEach>
		
	
	

<%@ tag body-content="empty" dynamic-attributes="dynattrs" %>
<%@ attribute name="myTah" required="true" %>