<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
        <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="register.jsp">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container-fluid">
  
<div class="container my-5">
    <h1 class="h3 mb-5 fw-normal text-center">Please sign in</h1>
    <div class="col-8 m-auto">
    <form action="EmployeeLogin" method="post">
    <div class="form-floating my-2">
      <input type="text" class="form-control shadow-lg" id="un" name="ename">
      <label for="floatingInput">Employee Name</label>
    </div>
    <div class="form-floating my-2">
      <input type="password" class="form-control shadow-lg" id="pw" name="password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <input type='hidden' name='requestType' value='login' />
    <input type='submit' name='Login' />
    </form>
    </div>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </div>
  </div>
</body>
</html>