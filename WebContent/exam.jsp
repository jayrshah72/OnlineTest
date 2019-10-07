<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.xml.parsers.*" %>
    <%@ page import="org.w3c.dom.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JIGNYA's KITTY</title>
<script>
var min=14;
var sec=61;
function timerstart()
{
	if(!(min<0))
		{
			sec--;
			showtime();
			if(sec==0)
				{
					min=min-1;
					sec=60;
				}
		
		}
	else{ document.getElementById("myForm").submit();  }
	setTimeout(function(){ timerstart() }, 1000);		
}
	
function showtime()
{
	document.getElementById("timer").innerHTML="Time Left "+min+" min & "+sec+" sec.";
}

</script>
<style>
.btn
{
position:relative;left:200px;border:1px solid red;background-color:#F0FFFF;font-size:30px;border-radius:20px;display:inline-block;cursor:pointer;
-webkit-transition-duration: 0.4s;transition-duration: 0.4s;
padding-left:15px;padding-right:15px;
}
.btn:hover
{
background-color:#bdb75b;
}

</style>

</head>
<body onload="timerstart()">

<div class="wrapper">
           <div class="logodiv">
                <h1 style="margin-bottom:10px;margin-top:10px;letter-spacing:5px;font-size:50px;margin-left:350px">JIGNYA's KITTY</h1>
                
           </div>
            
   ,<!--          
            <div style="height:20px;position:absolute;right:200px;top:5px"><img style="border-radius:10px" src="${pageContext.request.contextPath }/images/test121.png" />
                </div>
          -->       
           
            <div class="menu">
               
                <div>
                </div>
             </div>
             
            <div class="clear"> 
            	<div style="position:relative;left:40%;width:300px;color:red;font-weight:bold" id="timer"></div>
            </div>

            <div   class="content">
            <form style="width:600px;position:relative;left:30%;font-size:20px;letter-spacing:1px" id="myForm" action="sumbitExam" method="get">
            <%
           // String exam=request.getSession().getAttribute("exam").toString();
           
            try{
            	
					String exam=request.getParameter("test").toString();
					request.getSession().setAttribute("test",exam);
					
					
            	 File inputFile = new File("C:\\Quizzes\\"+exam+".xml");
                 DocumentBuilderFactory dbFactory 
                    = DocumentBuilderFactory.newInstance();
                 DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
                 Document doc = dBuilder.parse(inputFile);
                 doc.getDocumentElement().normalize();
                 NodeList nList = doc.getElementsByTagName("question");
                 
                 for(int i=0;i<nList.getLength();i++)
                 {
                	 Node node=nList.item(i);  %>
                	 
                	 <table >
                	 <tr><td><% out.print(i+1+"."); %></td>
                	 <td><% out.print( ""+((Element)node).getElementsByTagName("quizquestion").item(0).getTextContent()); %></td>
                	 </tr>
                	 <% for(int j=0;j<4;j++){ %>
                	 <tr><td></td>
                	 <td><input style="height: 25px;width:25px" type="radio" value="<%out.print(j);  %>" name="ans<%out.print(i+1);%>" > <% out.print( ""+((Element)node).getElementsByTagName("answer").item(j).getTextContent()); %></td>
                  	 </tr>
                  	 <% } %>
                  	 </table>
                	 
           <%
                		
                 }
            }catch(Exception e){System.out.println(e.getMessage());}
            
            
            
            
            %>	
            
            <input class="btn" type="submit" value="FINISH EXAM">
            </form>
            </div>
            <div class="clear"></div>
            <div class="footer">
                <h2></h2>
            </div>

        </div>
</body>
</html>