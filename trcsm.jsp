<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>首页redis-session</title>  
</head>  
<body>  
    <div>tomcat 集群测试</div>  
    <div>  
        <%     
          //HttpSession session = request.getSession(true);     
          System.out.println(session.getId());     
          out.println("<br> SESSION ID:" + session.getId()+"<br>");     
        %>  
    </div>  
</body>  
</html>