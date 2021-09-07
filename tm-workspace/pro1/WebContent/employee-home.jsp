<%@page import="pro1.Expenses" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Home</title>
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
            <a class="nav-link" href="index.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container-fluid text-center"><h2 class="my-4">Welcome ${employee_name}</h2></div>
<div class="container text-center mt-5">
	<table class="table m-auto table-striped table-bordered">
		<thead class="thead-dark">	
		<tr>
			<th scope="col">Expense Amount</th>
			<th scope="col">Expense Date</th>
			<th scope="col">Reason</th>
			<th scope="col">Status</th>
		</tr>
		</thead>
		<tbody>
		<% ArrayList<Expenses> list = (ArrayList<Expenses>)request.getAttribute("list");
		for(Expenses e:list) {%>
		<tr>
		<td><%=e.getAmount()%></td>
		<td><%=e.getExpenseDate()%></td>
		<td><%=e.getReason()%></td>
		<td class=<%=e.getStatus().equalsIgnoreCase("denied") ? "text-danger" : "text-success" %>><%=e.getStatus()%></td>
		</tr>
		<% } %>
		</tbody>
	</table>
	<div class="container-fluid">  
<div class="container m-auto">
    <h1 class="h3 mb-3 mt-5 fw-normal">Expense Request Form</h1>
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
	</div>
</body>
</html>