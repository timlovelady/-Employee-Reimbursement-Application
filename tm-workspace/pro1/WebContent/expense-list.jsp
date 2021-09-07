<%@page import="pro1.Expenses" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Expense Report List</title>
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
<div class="container text-center mt-5">
	<table class="table m-auto table-striped table-bordered">
		<thead class="thead-dark">	
		<tr>
			<th scope="col">Employee ID</th>
			<th scope="col">Expense Amount</th>
			<th scope="col">Expense Date</th>
			<th scope="col">Reason</th>
			<th scope="col">Status</th>
			<th scope="col">Approve</th>
			<th scope="col">Deny</th>
		</tr>
		</thead>
		<tbody>
		<% ArrayList<Expenses> list = (ArrayList<Expenses>)request.getAttribute("list");
		for(Expenses e:list) {%>
		<tr>
		<td><%=e.getEmployee_id()%></td>
		<td><%=e.getAmount()%></td>
		<td><%=e.getExpenseDate()%></td>
		<td><%=e.getReason()%></td>
		<td class=<%=e.getStatus().equalsIgnoreCase("denied") ? "text-danger" : "text-success" %>><%=e.getStatus()%></td>
		<td><form action="ApproveExpense" method="post">
		<input type="hidden" name="expense_id" value=<%=e.getExpense_id() %> />
		<input type="submit" class="btn btn-primary" value="approve">
		</form></td>
		<td><form action="DenyExpense" method="post">
		<input type="hidden" name="expense_id" value=<%=e.getExpense_id() %> />
		<input type="submit" class="btn btn-danger" value="deny">
		</form></td>
		</tr>
		<% } %>
		</tbody>
	</table>
	</div>
</body>
</html>