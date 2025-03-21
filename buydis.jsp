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
    String qry="select * from buy where email=?";
    PreparedStatement pst=con.prepareStatement(qry);

    pst.setString(1,uname);
    
    ResultSet rs=pst.executeQuery();
    
%>

<!DOCTYPE html>
<html>
<head>
    <title>Your Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            /*background-image:url('https://png.pngtree.com/background/20210715/original/pngtree-sky-blue-abstract-background-design-line-art-background-design-picture-image_1255170.jpg');*/
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
        <h1>Book Transactions</h1>
    </header>
    
        <% while (rs.next()) { %>
            <div class="container">
            <table>
                <tr>
                    <th>Name</th>
                    <td><%= rs.getString("uname") %></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><%= rs.getString("email") %></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><%= rs.getString("addr") %></td>
                </tr>
                <tr>
                    <th>Card No</th>
                    <td><%= rs.getString("card") %></td>
                </tr>
                <tr>
                    <th>Title of the Book</th>
                    <td><%= rs.getString("name") %></td>
                </tr>
                <tr>
                    <th>Author of the Book</th>
                    <td><%= rs.getString("author") %></td>
                </tr>
                <tr>
                    <th>Price of the Book</th>
                    <td><%= rs.getFloat("price") %></td>
                </tr>
                <tr>
                    <th>No. of Copies</th>
                    <td><%= rs.getInt("copies") %></td>
                </tr>
            </table>
        </div>
        <% } %>
    </div>
    <footer>
        &copy; 2024 Novel Nexus. All rights reserved.
    </footer>
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


