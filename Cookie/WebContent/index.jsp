<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
  //设置全局变量用来装cookie传过来的账号密码
  String name;
  String pwd;
%>

<%

   //设置一个值看cookie 是是否还存在
   boolean bo=false;
  //得到cookie对象
  Cookie[] cookies=request.getCookies();
     for(Cookie cookie:cookies){  //因为是数组 需要遍历查找
    	 if(cookie.getName().equals("name")||cookie.getName().equals("pwd")){  //判断是不是和我转过来的name值一样
    		name= cookie.getValue();  //得到cookie的name值
    		pwd=cookie.getValue();
    		bo=true;  //cookie拿到了几声true
    	 }
        
     }
     
     if(!bo){
    	 out.print("cookie不存在");
    	 name="";
    	 pwd="";
     }else{
    	 out.print("cookie存在你前面输入的密码是:"+pwd);
     }
     
     

%>
 
<form action="cookie.jsp" method="post">
   账号:<input type="text" name="name"  value="<%=(name==null?"":name)%>"> <br/>
   密码：<input type="password" name="pwd" value="<%=pwd%>"> <br/>
   <input type="submit" value="登录"> <br/>
   </form>
</body>
</html>