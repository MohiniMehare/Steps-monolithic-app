<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<meta charset="ISO-8859-1">

<!-- MDBootstrap CSS (Make sure it's included in your HTML) -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css"
  rel="stylesheet"
/>

<title>User Table</title>

</head>
<body>

<div class="container mt-5">
  <h2 class="text-center mb-4 fw-bold">User List</h2>

  <div class="table-responsive">
    <table class="table table-hover table-striped align-middle">
      <thead class="table-primary">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Phone Number</th>
          <th scope="col">address</th>
          <th scope="col">Edit</th>
          <th scope="col">Delete</th>
        </tr>
      </thead>
      
      <tbody>
        <c:forEach var="user" items="${userlist}">
        <tr>
          <th scope="row">${user.user_id}</th>
          <td>${user.fname} ${user.lname}</td>
          <td>${user.email}</td>
          <td>${user.number}</td>
          <td>${user.address}</td>
          <td><a href="${pageContext.request.contextPath}/editUser/${user.user_id}">Edit</a></td>
          <td><a href="${pageContext.request.contextPath}/delete/${user.user_id}">Delete</a></td>
        </tr>
        </c:forEach>
        
      </tbody>
    </table>
  </div>
</div>


<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"
></script>

</body>
</html>