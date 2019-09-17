<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
       <%
         request.setCharacterEncoding("utf-8");
         String name=request.getParameter("name");
         String pwd=request.getParameter("pwd");
         //将用户保存到cookie 中
        // if(name.equals("sj")&&pwd.equals("sj")){
        	 
         Cookie cookie=new Cookie("name",name);
         Cookie cookie2=new Cookie("pwd",pwd);
         cookie.setMaxAge(5);
         cookie2.setMaxAge(5);
         response.addCookie(cookie);
         response.addCookie(cookie2);
         request.getRequestDispatcher("a.jsp").forward(request, response);
         
         //}else{
        	 //response.sendRedirect("index.jsp");
       //  }
         
       %>
</body>
</html>