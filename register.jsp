<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            text-align: center; /* Center align text in body */
            background-image:url('https://thumbs.dreamstime.com/b/elegant-purple-white-background-swirls-little-leaves-space-your-text-spring-illustration-213490322.jpg');
			background-size:cover;
     
        }

        h1, h2 {
            margin-top: 50px; /* Add some space from the top */
        }
    </style>
</head>
<body>

<%@ page import="java.sql.*"%>
<%

       int sid = Integer.parseInt(request.getParameter("sid"));
       String sname = request.getParameter("sname");
	   String suname = request.getParameter("suname");
	   String spwd = request.getParameter("spwd");
	   String sgender = request.getParameter("sgender");
	   String saddr = request.getParameter("saddr");
	   long sphno = Long.parseLong(request.getParameter("sphno"));


	   //out.print(sid+" "+sname+" "+suname+" "+spwd+" "+sgender+" "+saddr+" "+sphno);


	   try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kento");

			String qry = "insert into use values(?,?,?,?,?,?,?)";
			PreparedStatement  stmt=con.prepareStatement(qry);

			stmt.setInt(1,sid);
			stmt.setString(2,sname);
			stmt.setString(3,suname);
			stmt.setString(4,spwd);
			stmt.setString(5,sgender);
			stmt.setString(6,saddr);
			stmt.setLong(7,sphno);

			stmt.executeUpdate();

			out.print("<h2>Registration successful !"+sname+"</h2>");
			out.print("<h2><a href='login.html'>Click here to Login</a></h2>");


		con.close();
		}
		catch (Exception e)
		{
			out.print(e);
		}	



%>
</body>
</html>