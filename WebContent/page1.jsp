<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<title>::Header::</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	<script type="text/javascript" src="resources/js/myjs.js"></script>
	<link rel="stylesheet" href="resources/css/main.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
 	<div id="big_wrapper">
		<header id="top_header">
			<div class="logo">
				<a href="http://google.com"><img src="resources/images/logo4.png" alt="lead banner"></a>
				 
			</div>

			<div class="search-container">
		    <form action="page2.jsp" method="post">
		      <input type="text" placeholder="Search..." name="search" id="search_box">
		      <button type="submit" id="search_btn">Submit</button>
		    </form>
  			</div>

		</header>
			 
		<nav id="top_menu">
			<ul>
			<div class="pull-left">
				<li><a href="index.html">Home</a></li>
				<li><a href="#">Services</a>
					<div class="dropdown">
						 
						<ul>
							<li><a href="#">Software</a></li>
							<li><a href="#">Hardware</a></li>
							<li><a href="#">Staffing</a></li>

						</ul>
					</div>
				</li>
				<li><a href="#">Clients</a></li>

				<li>
					<a href="#">Products</a>
					<div class="dropdown">
						 
						<ul>
							<li><a href="#">TV</a></li>
							<li><a href="#">Laptop</a></li>
							<li><a href="#">iPhone</a></li>

						</ul>
					</div>
						 
				</li>
			</div>
			<div class="pull-right">
				<li><a href="#">Contact</a></li>
				<li style="float:right;"><a href="logon.html">Logon</a></li>
			</div>	 		
				</ul>
		</nav>

	 	<div id="lead_banner">
	 	 
        	<img src="resources/images/logo3.png" alt="lead banner"><a href="http:google.com" id="banner_overlay">This is my first Webpage</a>    
        
    	</div>

			 	
		<div id="new_div">
		<div id="left_bar">
			<h1>Left Content</h1>

			<div class="vertical-menu">
			  <a href="#" class="active">Home</a>
			  <a href="#">Link 1</a>
			  <a href="#">Link 2</a>
			  <a href="#">Link 3</a>
			  <a href="#">Link 4</a>
			</div>

		</div>

		<section id="main_section">
			<center></center><h2 style="text-align:center;">Your Profile!</h2></center>
			 <br><br>

			<center> 
		<div id="table_btn">
			 
			   
				  <table id="t01" border="1" bgcolor="RED">

					<tbody>
		  				<tr>  
		 					<td>ID</td>  
		 					<td><%=session.getAttribute("id") %></td>  
		 				</tr> 
						<tr>
							<td>Name</td>
							<td><%=session.getAttribute("name")%></td>
						</tr>
						 
						<tr>
							<td>Password</td>
							<td><%=session.getAttribute("password") %></td>
						</tr>
		 				<tr>  
		 					<td>Salary</td>  
		 					<td><%=session.getAttribute("salary") %></td> 
		 				</tr>
		  				 
		 			</tbody> 
				</table>
			 
			 
		<div>	 
		</center>
		<br><br>
		<center> 
		<button id="btn1">Show and Hide Me!</button><br><br>
		 <img src="resources/images/img_chania.jpg" id="demo"  width="460px" height="350px" /> 
							
		</center>

		</section>
		
		 
<script>  
 $(document).ready(function(){
	 $("#btn1").click(function(){
		 $("img").toggle();
	 });
 });
</script>


		<aside id="side_news">
			
			<div id="right_bar">
			<h1>Right Content</h1>

			<div class="vertical-menu">
			  <a href="#" class="active">News</a>
			  <a href="#">Link 1</a>
			  <a href="#">Link 2</a>
			  <a href="#">Link 3</a>
			  <a href="#">Link 4</a>
			</div>

		</div>

		</aside>

	</div>
	<footer id="the_footer">
		<link rel="stylesheet" href="resources/css/icon.css"> 
			<a href="#" class="fa fa-facebook"></a>
			<a href="#" class="fa fa-twitter"></a>
			<a href="#" class="fa fa-google"></a>
			<a href="#" class="fa fa-linkedin"></a>
			<a href="#" class="fa fa-youtube"></a>
			 
			
		<div>
			<p>&copy: All Rights Resevered!</p>
		</div>
	</footer>
 </div>	
</body>
</html>