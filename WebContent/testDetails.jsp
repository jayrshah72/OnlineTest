<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JIGNYA's KITTY</title>
<style type="text/css">

.content div {
	
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width:50%;
    border:1px dotted purple;
    position:relative;
    left:25%;
    
}
.btn
{
position:relative;left:150px;border:1px solid red;background-color:#F0FFFF;font-size:20px;border-radius:20px;display:inline-block;cursor:pointer;
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
<div class="wrapper">
           
            <div class="logodiv">
                <h1 style="margin-bottom:10px;margin-top:10px;letter-spacing:5px;font-size:50px;margin-left:350px">JIGNYA's KITTY</h1>
                
           </div>
            
            
     <!--        <div style="height:20px;position:absolute;right:200px;top:5px"><img style="border-radius:10px" src="${pageContext.request.contextPath }/images/test121.png" />
                </div>
           -->      
           <%
          	
           %>
            <div class="menu">
               
                <div><a href="home.jsp" aria-orientation="horizontal"><img class="imglogos" src="${pageContext.request.contextPath }/images/Home-logo.jpg" /></a>
                    <a href="login.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/login.png" /></a>
                    <a href="signup.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/signup.jpg" /></a>
                    <a href="contactus.jsp"><img class="imglogos" src="${pageContext.request.contextPath }/images/contactus.jpg" /></a>
                      </div>
             </div>
                
           
            <div class="clear"> </div>

            <div class="content">
            <div>
                <ul style="list-style-type:disc">
 <li>Quiz contains 20 Multiple Choice Questions</li>
 <li>Total time for the Quiz is 15 Minutes</li>
 <li>You can finish the exam at any time</li>
 <li>Read the question carefully before answering</li>
 <li>You can change your answers before submitting</li>
 <li>Good luck for the test.</li>
</ul> 
<% String exam=request.getParameter("test"); %>
<button class="btn" onclick="location.href='${pageContext.request.contextPath}/exam.jsp?test=<%out.print(exam); %>'">Start Exam</button>
</div>
            </div>
            
            <div class="clear"></div>
            <div class="footer">
                <h2></h2>
            </div>

        </div>



      
        <div class="dropdown" onmouseout="hidediv()">
            <div id="dropdown" class="dropdown-content" >
                <a href="Student_login.aspx">Student</a>
                  <a href="Adminlogin.aspx">Admin</a>    
            </div>
        </div>
</body>
</html>