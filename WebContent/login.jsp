<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>



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
    top:50px;
}
</style>
</head>
<body>
<div class="wrapper">
           
            <div class="logodiv">
                <h1 style="margin-bottom:10px;margin-top:10px;letter-spacing:5px;font-size:50px;margin-left:350px">JIGNYA's KITTY</h1>
                
           </div>
            
            
       <!--      <div style="height:20px;position:absolute;right:200px;top:5px"><img style="border-radius:10px" src="${pageContext.request.contextPath }/images/test121.png" />
                </div>
             -->    
           
            <div class="menu">
               
                <div><a href="home.jsp" ><img class="imglogos" src="${pageContext.request.contextPath }/images/Home-logo.jpg" /></a>
                    <a href="login.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/login.png" /></a>
                    <a href="signup.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/signup.jpg" /></a>
                    <a href="contactus.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/contactus.jpg" /></a>
                    </div>
             </div>
                
           
            <div class="clear">
            
           <% if(request.getSession().getAttribute("user")!=null)
           {
        	   request.getRequestDispatcher("home.jsp").forward(request,response);
           }
        	   
           if(request.getAttribute("errorMessage")!=null)
           {
        	   out.print(request.getAttribute("errorMessage").toString());
           }
        	   %>
           
           </div>
           
        	

            <div class="content">
           <lable style="position:relative;left:40%;top:15px;"> Not Registered Yet?&nbsp<a href="signup.jsp">Sign Up Here</a></lable>
           <div> 
            
            <h2>Login Form</h2>
              <form action="checkLogin" method="post">
              <label for="fname">UserName:</label>
              	<input type="text" id="fname" name="username" placeholder="Enter UserName"><br>
              	<label for="pass">Password:</label>
              	<input type="password" id="pass" name="password" placeholder="Enter Password"><br>
              	<input type="submit" value="LOGIN">              
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