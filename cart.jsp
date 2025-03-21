<%@ page import="java.sql.*"%>
<%

        String uname = (String)session.getAttribute("user");
        if(uname!=null)
{
       int bid = Integer.parseInt(request.getParameter("id"));
	   String url = request.getParameter(("url"));
       String btitle = request.getParameter("title");
	   String bauthor=request.getParameter("author");
	   float price = Float.parseFloat(request.getParameter("price"));

       
	   

	   


	   try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kento");
            
			
			String qry = "insert into boo values(?,?,?,?,?,?)";
			PreparedStatement  stmt=con.prepareStatement(qry);
                         
           
			stmt.setInt(1,bid);
			stmt.setString(2,url);
			stmt.setString(3,btitle);
			stmt.setString(4,bauthor);
			stmt.setFloat(5,price);
			stmt.setString(6,uname);
			
			stmt.executeUpdate();

			%>
                        <jsp:forward page="cartdis.jsp">
							<jsp:param name="bid" value="<%=bid%>"/>
				            <jsp:param name="url" value="<%=url%>"/>
                            <jsp:param name="btitle" value="<%=btitle%>"/>
							<jsp:param name="bauthor" value="<%=bauthor%>"/>
                            <jsp:param name="price" value="<%=price%>"/>
							<jsp:param name="uname" value="<%=uname%>"/>
				</jsp:forward>
<%

		con.close();
		}
		catch (Exception e)
		{
			out.print(e);
		}
}
else
{

	response.sendRedirect("login.html");

}	



%>