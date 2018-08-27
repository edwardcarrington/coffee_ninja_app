<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
<title>Add An Item</title>

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
            <form action="/create" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center"> Valid information is required to add an item. <span class="req"></span></legend>

            <div class="form-group"> 	 
                <label for="name"><span class="req">* </span> Name: </label>
                    <input class="form-control" type="text" name="name" id = "name" value="${items.name}" placeholder="Espresso" required /> 
                        <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <label for="description"><span class="req">* </span> Description: </label> 
                    <input class="form-control" type="text" name="description" id = "description" value="${items.description}" placeholder="Spiced Rum, Peanut" required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <label for="quantity"><span class="req">* </span> Quantity: </label> 
                    <input class="form-control" type="text" name="quantity" id = "quantity" value="${items.quantity}" placeholder="100" required />   
                        <div class="status" id="status"></div>
            </div>

            <div class="form-group">
                <label for="price"><span class="req">* </span> Price: </label> 
                    <input class="form-control" type="text" name="price" id = "price" value="${items.price}" placeholder="$5.25" required />
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>
                
            </div>

            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Add Item">
                <a href="/admin" class="btn btn-secondary" >Cancel</a>
            </div>

            </fieldset>
            </form><!-- ends register form -->

        </div><!-- ends col-6 -->
   
            <div class="col-md-6">
                <h1 class="page-header">Coffee Ninja</h1>
                <p>You will be taken back to the admin panel once you've added an item.<br><a href="https://youtu.be/gnVc_MLH38w" title="ninja man" target="_blank">Click here for a demo of how to add items to the list.</a></a></p>
                
            </div>

	</div>
</div>
</body>
</html>