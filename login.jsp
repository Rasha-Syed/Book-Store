<%@ page import="java.sql.*"%>
<%

       
	   String un = request.getParameter("uname");
	   String pwd = request.getParameter("pwd");
	   

	   


	   try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kento");

			String qry = "select * from use where suname=? and spwd=?";
			PreparedStatement  stmt=con.prepareStatement(qry);

			stmt.setString(1,un);
			stmt.setString(2,pwd);
			

			ResultSet rs = stmt.executeQuery();

			if(rs.next())
			{
				//out.print("Login successful! "+un);
                                 session.setAttribute("user",un);
					

				%>
			    <jsp:forward page="home.jsp">
				  <jsp:param name="uname" value="<%=un%>"/>
				</jsp:forward>
                             <jsp:forward page="cart.jsp">
				  <jsp:param name="user" value="<%=un%>"/>
				</jsp:forward>
                             <jsp:forward page="buy.jsp">
				  <jsp:param name="user" value="<%=un%>"/>
				</jsp:forward>
				<jsp:forward page="buydis.jsp">
				  <jsp:param name="user" value="<%=un%>"/>
				</jsp:forward>
				<jsp:forward page="cartdis.jsp">
				  <jsp:param name="user" value="<%=un%>"/>
				</jsp:forward>
				<jsp:forward page="user.jsp">
				  <jsp:param name="user" value="<%=un%>"/>
				</jsp:forward>
			<%
			}
			else
			{
				out.print("<font color='red'>" +"Invalid credentials! Please enter correct credentials"+"</font>");
				%>
				<jsp:include page="login.html"/>
			<%
			}


		con.close();
		}
		catch (Exception e)
		{
			out.print(e);
		}	



%>