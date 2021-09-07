<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <div class="mb-auto">
    <div>
      <div class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link" href="login.jsp">Login</a>
        <a class="nav-link" href="register.jsp">Register</a>
        <a class="nav-link" href="manager-loginr.jsp">Management Login</a>
      </div>
    </div>
  </div>
<h2 class="text-center text-danger">Error processing request</h2>
<h1>${error}</h1>
</body>
</html>