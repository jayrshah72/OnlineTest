<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.xml.parsers.*" %>
    <%@ page import="org.w3c.dom.*" %>
  <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
<title>JIGNYA's KITTY</title>

<style>

.content div {
	
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width:50%;
    border:1px dotted purple;
    position:relative;
    left:25%;
    
}
.btn a
{
position:relative;left:200px;border:1px solid red;background-color:#F0FFFF;font-size:20px;border-radius:20px;display:inline-block;cursor:pointer;
-webkit-transition-duration: 0.4s;transition-duration: 0.4s;
padding-left:25px;padding-right:25px;
text-decoration:none;color:black;
}
.btn a:hover
{
background-color:#bdb75b;
}

</style>


</head>
<body>

<div class="logodiv">
                <h1 style="margin-bottom:10px;margin-top:10px;letter-spacing:5px;font-size:50px;margin-left:350px">JIGNYA's KITTY</h1>
                
           </div>
            
            
        <!--     <div style="height:20px;position:absolute;right:200px;top:5px"><img style="border-radius:10px" src="${pageContext.request.contextPath }/images/test121.png" />
                </div>
              -->   
           
            <div class="menu">
               
                <div>
                </div>
             </div>
                
           
            <div class="clear">
          <div class="btn" style="float:right;position:relative;top:0px;right:300px;margin-bottom:0px"><a class="btn" href="logout">LOGOUT</a></div></div>
            	 
           
            <div class="content">
           	<div>
           	<h2 style="text-align:center;text-decoration:underline;font-color:#8541ad">Result</h2>
           	<table style="position:relative;left:35%">
           	<tr><td> USERNAME </td><td>:</td>
           	
           	<td><% out.print(request.getSession().getAttribute("user"));
           	String name=request.getSession().getAttribute("user").toString();
           	%></td>
           	</tr>
           	<tr><td>Test Name</td><td>:</td>
           	<td><% out.print(request.getSession().getAttribute("test").toString().toUpperCase()); %></td>
           	</tr>
           	<tr>
           	<td>Total Questions</td><td>:</td>
           	<td>20</td>
           	</tr>
           	
           	<% 
           	String exam=request.getSession().getAttribute("test").toString();
           	int total=0;
            File inputFile = new File("C:\\Quizzes\\"+exam+".xml");
            DocumentBuilderFactory dbFactory 
               = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(inputFile);
            doc.getDocumentElement().normalize();
            
            String[] arr=new String[20];
            for(int i=0;i<20;i++)
            {            		
            	arr[i]=""+doc.getElementsByTagName("correct").item(i).getTextContent();
            	System.out.println(arr[i]);
            }
           	if(request.getParameter("ans1")!=null&&request.getParameter("ans1").toString().equals(arr[0]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans2")!=null&&request.getParameter("ans2").toString().equals(arr[1]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans3")!=null&&request.getParameter("ans3").toString().equals(arr[2]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans4")!=null&&request.getParameter("ans4").toString().equals(arr[3]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans5")!=null&&request.getParameter("ans5").toString().equals(arr[4]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans6")!=null&&request.getParameter("ans6").toString().equals(arr[5]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans7")!=null&&request.getParameter("ans7").toString().equals(arr[6]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans8")!=null&&request.getParameter("ans8").toString().equals(arr[7]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans9")!=null&&request.getParameter("ans9").toString().equals(arr[8]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans10")!=null&&request.getParameter("ans10").toString().equals(arr[9]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans11")!=null&&request.getParameter("ans11").toString().equals(arr[10]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans12")!=null&&request.getParameter("ans12").toString().equals(arr[11]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans13")!=null&&request.getParameter("ans13").toString().equals(arr[12]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans14")!=null&&request.getParameter("ans14").toString().equals(arr[13]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans15")!=null&&request.getParameter("ans15").toString().equals(arr[14]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans16")!=null&&request.getParameter("ans16").toString().equals(arr[15]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans17")!=null&&request.getParameter("ans17").toString().equals(arr[16]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans18")!=null&&request.getParameter("ans18").toString().equals(arr[17]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans19")!=null&&request.getParameter("ans19").toString().equals(arr[18]))
           	{
           		total++;
           	}
           	if(request.getParameter("ans20")!=null&&request.getParameter("ans20").toString().equals(arr[19]))
           	{
           		total++;
           	}
           	%>
           	<tr><td>Correct Answers</td><td>:</td>
           	<td><% out.print(total); %></td>
           	</tr>
           	</table> 
    
           <%
           	Class.forName("com.mysql.jdbc.Driver");
		
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/quiz","root","");
			Statement st=con.createStatement();
			String sql = "insert into result values('"+name+"',"+total+")";
			st.execute(sql);
           %>
           	<a class="btn" style="position:relative;left:40%" href="home.jsp">Give another Test</a>
            </div>
			</div>
          
           
            <div class="clear"></div>
            <div class="footer">
                <h2></h2>
            </div>

       

</body>
</html>