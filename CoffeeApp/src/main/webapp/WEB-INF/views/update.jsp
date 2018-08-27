<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
<title>${ title }</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="shortcut icon" type="image/jpg" href="img/favicon1.jpg"/>

<!-- <link rel="stylesheet" href="/style.css" /> -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->
</head>

<div class="container">

	<div class="row">
        <div class="col-md-6">
            <form action="/admin/${id}/update" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center"> Enter updated information of item below. <span class="req"></span></legend>

            <div class="form-group"> 	 
                <label for="name"><span class="req"></span> New Name: </label>
                    <input class="form-control" type="text" name="name" id = "name" value="${items.name}" placeholder="${items.name}" /> 
                        <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <label for="description"><span class="req"></span> New Description: </label> 
                    <input class="form-control" type="text" name="description" id = "description" value="${items.description}" placeholder="${items.description}" />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <label for="quantity"><span class="req"></span> New Quantity: </label> 
                    <input class="form-control" type="number" name="quantity" id = "quantity" value="${items.quantity}" placeholder="${items.quantity}" />   
                        <div class="status" id="status"></div>
            </div>

            <div class="form-group">
                <label for="price"><span class="req"></span> New Price: </label> 
                    <input class="form-control" type="number" step="0.01" name="price" id = "price" value="${items.price}" placeholder="${items.price}" />
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <input type="hidden" value="${ items.id }" name="${id}" />
                <hr>
                
            </div>

            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Edit Item">
                <a href="/admin" class="btn btn-secondary" >Cancel</a>
            </div>

            </fieldset>
            </form><!-- ends register form -->

        </div><!-- ends col-6 -->
   
            <div class="col-md-6">
                <h1 class="page-header">Coffee Ninja</h1>
                <p>You will be taken back to the admin panel once you've edited this item.<br><a href="https://youtu.be/gnVc_MLH38w" title="ninja man" target="_blank">Click here for a demo of how to edit an item.</a></a></p>
                
            </div>

	</div>
</div>
</body>
</html>