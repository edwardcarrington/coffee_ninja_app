<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Items</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
 <link rel="shortcut icon" type="image/jpg" href="img/favicon1.jpg"/>
 
 <!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<!-- With boostrap, pages should generally be surrounded with a container element. -->
	<main class="container">
		<h1>Admin Panel</h1>
		
		<form class="form-inline" action="/items" autocomplete="off">
		  <label class="sr-only" for="keyword">Keyword</label>
		  <input type="text" value="${item.keyword}" class="form-control mb-2 mr-sm-2" id="keyword" name="keyword" placeholder="Keyword">
		  
		  <label class="sr-only" for="category">Category</label>
		  <select class="form-control mb-2 mr-sm-2" id="category" name="category">
		  	<option value="">Category</option>
		  	<c:forEach items="${ category }" var="cat">
		  		<option <c:if test="${ cat eq param.category }">selected</c:if>>${ cat }</option>
		  	</c:forEach>
		  </select>
		
		  <button type="submit" class="btn btn-light" mb-2 mr-2">Search</button>
		  <c:if test="${not empty param.keyword or not empty param.category}">
		    <%-- c:if determines whether its contents should show or not --%>
		  	<a href="/food" class="btn btn-secondary mb-2">Clear</a>
	  	  </c:if>
		</form>
		
		<table class="table">
			<thead>
			<tr>
				<th>Item</th><th>Description</th><th>Price</th><th>Action</th>
			</tr>
			</thead>
			<tbody>
			<%-- c:forEach is loops through the items and repeats the content for each one.
			     Think of this as:   for (Food food : foods) { ... }
			--%>
			<c:forEach items="${ items }" var="item">
				<tr>
					<%-- Access properties of the java bean using simple . notation.
					     This actually calls the getters behind the scenes. --%>
					<td>${item.name}</td><td>${item.description}</td><td>${item.price}</td>
					<td>
						<a href="/admin/${ item.id }/update" class="btn btn-warning">Edit</a>
						<a href="/delete?id=${ item.id }" class="btn btn-light" onclick= "return confirm('Are you sure you want to delete this item?')">Delete</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<div>
		<a class="btn btn-secondary" href="/create">Add Item</a>
		<a class="btn btn-secondary" href="/index">Home</a>
		
		</div>
		
	</main>
</body>
</html>