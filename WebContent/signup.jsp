<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JIGNYA's KITTY</title>
<script>

function checkpass()
{

	var pass=document.getElementById("pass").value;
	var cnf=document.getElementById("cnf").value;
	if(pass!=cnf)
		{
		document.getElementById("passerror").innerHTML="Both Password Should be matched";
		}
	else
		{
		document.getElementById("passerror").innerHTML="";
		
		}
	
}

</script>


<style type="text/css">
input[type=text],input[type=password] {
    width: 100%;
    
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width:auto;
   
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.content div {
	text-align:center;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width:50%;
    border:1px dotted purple;
    position:relative;
    left:25%;
    
}


</style>

</head>
<body>
<div class="wrapper">
           
            <div class="logodiv">
                <h1 style="margin-bottom:10px;margin-top:10px;letter-spacing:5px;font-size:50px;margin-left:350px">JIGNYA's KITTY</h1>
                
           </div>
            
            
         <!--    <div style="height:20px;position:absolute;right:200px;top:5px"><img style="border-radius:10px" src="${pageContext.request.contextPath }/images/test121.png" />
                </div>
               -->  
           
            <div class="menu">
               
                <div><a href="home.jsp" aria-orientation="horizontal"><img class="imglogos" src="${pageContext.request.contextPath }/images/Home-logo.jpg" /></a>
                    <a href="login.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/login.png" /></a>
                    <a href="signup.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/signup.jpg" /></a>
                    <a href="contactus.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/contactus.jpg" /></a>
                  </div>
             </div>
             <%
             	if(request.getParameter("signuppro")!=null&&request.getParameter("signuppro").equals("yes"))
             	{
             		%>
             	<h2 >Username Already Exists</h2>
             	<h3 >Try using Another Username</h3>
             		
            <% 		
             		
             	}
             %>   
           
            <div class="clear"><h2 id="passerror"></h2></div>

            <div class="content">
            	<div>
            	<form name="f2" method="post" action="checkSignup">
            	<h2>Sign Up Form</h2>
            	<label for="fname">UserName:</label>
            	<input type="text" id="fname" name="username" placeholder="Enter Username"><br>
           <label for="email">Email ID:</label>
            	<input id="email" type="text" name="email" placeholder="Enter Email id"><br>
            	<label for="pass">Password:</label>
 	          	<input id="pass" type="password" name="password" placeholder="Enter Password"><br>
    			<label for="cnf" >Confirm Password:</label>
            	<input id="cnf" onkeyup="checkpass()" type="password" name="confpassword" placeholder="Re-enter Password"><br>
            	<input type="submit" name="submitbtn" value="SIGN UP">
            	
            	</form>
    		</div>
            </div>
            <div class="clear"></div>
            <div class="footer">
                <h2></h2>
            </div>

        </div>
</body>
</html>