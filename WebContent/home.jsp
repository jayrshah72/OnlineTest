<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JIGNYA's KITTY</title>
<style>

.content div {
	text-align:center;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width:auto;
    
   
}
.btn
{
position:relative;left:200px;border:1px solid red;background-color:#F0FFFF;font-size:20px;border-radius:20px;display:inline-block;cursor:pointer;
-webkit-transition-duration: 0.4s;transition-duration: 0.4s;
padding-left:25px;padding-right:25px;
text-decoration:none;color:black;
}
.btn:hover
{
background-color:#bdb75b;
}

</style>

</head>

<body>

<form>

        <div class="wrapper">
           
            <div class="logodiv">
                <h1 style="margin-bottom:10px;margin-top:10px;letter-spacing:5px;font-size:50px;margin-left:350px">JIGNYA's KITTY</h1>
                
           </div>
            
            
   <!--          <div style="height:20px;position:absolute;right:200px;top:5px"><img style="border-radius:10px" src="${pageContext.request.contextPath }/images/test121.png" />
                </div>
         -->        
           
            <div class="menu">
               
                <div><a href="home.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/Home-logo.jpg" /></a>
                    <a href="login.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/login.png" /></a>
                    <a href="signup.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/signup.jpg" /></a>
                    <a href="contactus.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/contactus.jpg" /></a>
                   </div>
             </div>
                
           
            <div class="clear">
            <%
            	if(request.getSession().getAttribute("user")!=null)
            	{String str=request.getSession().getAttribute("user").toString();
            %>
            	<div style="margin-bottom:-40px;"><h2 style="position:relative;left:150px;padding-bottom:-50px;width:400px">Welcome user&nbsp;<% out.print(str); %></h2></div>
            	<div style="float:right;position:relative;top:-25px;right:300px;margin-bottom:0px"><a class="btn" href="logout">LOGOUT</a></div></div>
            	 
           <% } %>
             </div>

            <div class="content">
                 <div>
                 
                 <a href="takeExam?test=jignyaKitty"><img height="50%" width="50%" src="${pageContext.request.contextPath}/images/start.png"/></a>
                 
			<!-- 	<table style="position:relative;left:100px" cellpadding="50" cellspacing="0">
				
				<tr>
<td><a href="takeExam?test=java"><img height="200" width="200" src="${pageContext.request.contextPath}/images/java.png"/></a></td>
<td><a href="takeExam?test=javascript"><img height="200" width="200" src="${pageContext.request.contextPath}/images/javascript.png"/></a></td>
<td><a href="takeExam?test=sql"><img height="200" width="200" src="${pageContext.request.contextPath}/images/sql-logo.png"/></a></td>
<td><a href="takeExam?test=python"><img height="200" width="200" src="${pageContext.request.contextPath}/images/python.jpg"/></a></td>
</tr>

<tr>
<td><a href="takeExam?test=css"><img height="200" width="200" src="${pageContext.request.contextPath}/images/css.jpg"/></a></td>
<td><a href="takeExam?test=php"><img height="200" width="200" src="${pageContext.request.contextPath}/images/php-logo.jpg"/></a></td>
<td><a href="takeExam?test=linux"><img height="200" width="200" src="${pageContext.request.contextPath}/images/logo-linux.png"/></a></td>
<td><a href="takeExam?test=mongodb"><img height="200" width="200" src="${pageContext.request.contextPath}/images/mongodb_logo.png"/></a></td>
</tr>
				
				</table>-->
				</div>
            </div>
            <div class="clear"></div>
            <div class="footer">
                <h2></h2>
            </div>      
    </form>
</body>

</html>