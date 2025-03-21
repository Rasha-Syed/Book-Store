<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%

        String uname = (String)session.getAttribute("user");
        if(uname!=null)
       {

//out.print("<h3 align='center'>"+"Welcome! "+un+"</h1>");
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kento");
    String qry="select * from use where suname=?";
    PreparedStatement pst=con.prepareStatement(qry);
    pst.setString(1,uname);
    
    ResultSet rs=pst.executeQuery();
    
    
%>

<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        header {
         background-color: #4b0082; /* Dark purple */
        color: white;
        padding: 10px 0;
        text-align: center;
}

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center horizontally */
        }

        h1 {
            margin-bottom: 20px;
        }

        .book {
            width: 48%; /* Adjust the width as needed */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .book img {
            width: 200px; /* Set the width to a fixed value */
            height: 300px; /* Set the height to a fixed value */
            object-fit: cover; /* This property ensures the entire image is visible without distortion */
            border-radius: 5px; /* Optional: Add rounded corners for aesthetics */
            margin-bottom: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        footer {
        background-color: #4b0082; /* Dark purple */
        color: white;
        text-align: center;
        padding: 10px 0;
        width: 100%;
        clear: both; /* Clear floats */
}
    </style>
</head>
<body>
    <header>
        <h1>Your Profile</h1>
    </header>
    
        <% if(rs.next()) { %>
            <div class="container">
            <table>
                
                <tr>
                    <th>Name</th>
                    <td><%= rs.getString("sname") %></td>
                </tr>
                <tr>
                    <th>Username</th>
                    <td><%= rs.getString("suname") %></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td><%= rs.getString("sgender") %></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><%= rs.getString("saddr") %></td>
                </tr>
                <tr>
                    <th>Phone no</th>
                    <td><%= rs.getLong("sphno") %></td>
                </tr>
                
                
            </table>
        </div>
        <% } %>
    </div>
    
</body>
</html>
<%
con.close();
} catch (Exception e) {
    out.print(e);
}
}

else
{
    response.sendRedirect("login.html");
}
%>
<jsp:include page="buydis.jsp"/>



