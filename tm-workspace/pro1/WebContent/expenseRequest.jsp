<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Expense Request</title>
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
            <a class="nav-link" href="index.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container-fluid">  
<div class="container my-5">
    <h1 class="h3 mb-3 fw-normal">Expense Request Form</h1>
    <h2 class="text-center">${employee_id}</h2>
    <div class="col-8 m-auto">
    <form action="CreateExpenseReport" method="post">
    <div class="row">
    <div class="my-2 col-3">
    <label>Date of Expense</label><br />
      <input type="date" class="form-control-sm shadow-lg mt-2" id="dof" name="expense_date">      
    </div>
    <div class="my-2 col-3">
    <label>Amount</label><br />
      <input type="number" class="form-control-sm shadow-lg mt-2" id="amt" name="amount">      
    </div>
    <div class="my-2 col-4 mx-5">
    <label>Reason</label><br />
      <textarea class="form-control shadow-lg mt-2" id="reason" name="reason"></textarea>   
    </div>
    <input type="hidden" name="employee_id" value=${employee_id} />
    </div>
    <div class="m-5 p-3 container-fluid float-right">
  <label for="formFile" class="form-label">Upload receipt images</label>
  <input class="form-control-sm" type="file" id="formFile">
</div>
    
    <input type='hidden' name='requestType' value='er' />
    
    <div class="container-fluid text-center">
    <input type='submit' name='Submit' class=" btn btn-success shadow-lg border" />
    </div>
    </form>
    </div>
    
  </div>
  </div>
  <hr />
  <div class="text-center"><p class="mt-5 mb-3 text-muted">&copy; 2021</p></div>
</body>
</html>