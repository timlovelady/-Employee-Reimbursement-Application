<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
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
          <li class="nav-item">
            <a class="nav-link" href="manager-login.jsp">Management Login</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container-fluid">
  
<div class="container my-5">
    <h1 class="h3 mb-5 fw-normal text-center">Register Here</h1>
    <form action="EmployeeRegister" method="post">
    <div class="col-8 m-auto">
    <div class="form-floating my-2">
      <input type="text" class="form-control shadow-lg" id="un" name="ename">
      <label for="floatingInput">Email</label>
    </div>
    <div class="form-floating my-2">
      <input type="password" class="form-control shadow-lg" id="pw" name="password">
      <label for="floatingPassword">Password</label>
    </div>
    <div class="form-floating my-2">
      <input type="password" class="form-control shadow-lg" id="floatingCPassword" name="cpassword">
      <label for="floatingCPassword">Confirm Password</label>
    </div>
    </div>
    <input type='hidden' name='requestType' value='register' />
    <div class="container-fluid text-center m-4">
    <input class="btn btn-dark" type='submit' name='Register' />
    <button type="reset" class="btn btn-danger">Reset</button>
    </div>
    </form>
    <div>
    <small class="text-blue"><a class="nav-link" href="login.jsp">Already registered? Sign in</a></small></div>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </div>
  </div>
</body>
</html>