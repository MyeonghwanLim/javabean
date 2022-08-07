<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.MemberBean" %>
    <jsp:useBean id="mmb" class="test.MemberMangerBean"  scope ="session"/>
    <jsp:useBean id="mb" class="test.MemberBean" />
	<jsp:setProperty property="*" name="mb" />
	<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<a href="form.html">등록 페이지로 가기</a>
<hr>
<ol>
<%
	ArrayList<MemberBean> datas= mmb.selectAll(mb);
	if(datas.size()>0){
	for(MemberBean v: datas){
%>
	<li><%=v.getMname()%> <%=v.getScore() %><%=v.getGender() %></li>
<%
}
	}
	else{
		out.println("<H3> 출력할데이터가 없습니다.</H3>"); 
	}

%>
</ol>


</body>
</html>