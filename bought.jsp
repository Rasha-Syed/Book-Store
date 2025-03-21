<%@ page import="java.sql.*"%>
<%





       
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String addr = request.getParameter("addr");
       String card = request.getParameter("card");
	   int id = Integer.parseInt(request.getParameter("id"));
	   String title = request.getParameter("title");
	   String author=request.getParameter("author");
	   float price = Float.parseFloat(request.getParameter("price"));
       int copies = Integer.parseInt(request.getParameter("copies"));
     

       
try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kento");

			String qry = "insert into buy values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement  stmt=con.prepareStatement(qry);
                         
            stmt.setString(1,name);
            stmt.setString(2,email);
            stmt.setString(3,addr);
            stmt.setString(4,card);
			stmt.setInt(5,id);
			stmt.setString(6,title);
			stmt.setString(7,author);
			stmt.setFloat(8,price);
            stmt.setInt(9,copies);
            
			
			stmt.executeUpdate();
            %>
        
        <jsp:forward page="buydis.jsp">
            <jsp:param name="uname" value="<%=name%>"/>
            <jsp:param name="email" value="<%=email%>"/>
            <jsp:param name="addr" value="<%=addr%>"/>
            <jsp:param name="card" value="<%=card%>"/>
							<jsp:param name="id" value="<%=id%>"/>
				           
                            <jsp:param name="title" value="<%=title%>"/>
							<jsp:param name="author" value="<%=author%>"/>
                            <jsp:param name="price" value="<%=price%>"/>
                            <jsp:param name="copies" value="<%=copies%>"/>
				</jsp:forward>

        

<%
		con.close();
		}
		catch (Exception e)
		{
			out.print(e);
		}	

%>

