<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Entry</title>
    <style>
        body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f8f8f8;
    /*background-image:url('https://png.pngtree.com/background/20210715/original/pngtree-sky-blue-abstract-background-design-line-art-background-design-picture-image_1255170.jpg');*/
    color: #333;
}

header {
    background-color: #4b0082; /* Dark purple */
    color: white;
    padding: 10px 0;
    text-align: center;
}

nav ul {
    list-style-type: none;
    padding: 20;
    text-align: center; /* Align links to the center */
}

nav ul li {
    display: inline-block;
    margin-right: 20px;
}

nav ul li.icons {
    float: right; /* Float icons to the right */
    margin-right: 0; /* Remove margin from the icons */
}
nav ul li a {
    color: #f8f8f8;
    text-decoration: none;
}

nav ul li a:hover {
    color: black; /* Dark purple */
}

nav ul li a img {
    width: 30px;
    height: 30px;
    vertical-align: middle;
    margin-left: 10px;
}
h2 {
            text-align: center;
            margin-top: 70px;
            
        }
footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #4b0082; /* Dark purple */
    color: white;
    text-align: center;
    padding: 10px 0;
}


    </style>
</head>
<body>
    <header>
        <h1>NOVEL NEXUS</h1>
        
<nav>
    <ul>
        <li><a href="home.html">Home</a></li>
        <li><a href="book.html">Books</a></li>
	<li><a href="contact.html">Contact</a></li>
	<li><a href="login.html">Login</a></li>
    <li><a href="logout.jsp">Logout</a></li>
        <li class="icons"><a href="user.jsp"><img src="https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=" alt="User" style="width: 30px; height: 30px;"></a></li>
        <li class="icons"><a href="cartdis.jsp"><img src="https://t3.ftcdn.net/jpg/03/14/84/68/360_F_314846831_5jJsC7Us9obgwMjRDqFhs04dodzvnZvi.jpg" alt="Cart" style="width: 30px; height: 30px;"></a></li>
    </ul>
</nav>

    </header>
    
    <div class="container">
       

<%@ page import="java.sql.*"%>
<%





       
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String message = request.getParameter("message");
       
     

       
try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kento");

			String qry = "insert into contact values(?,?,?)";
			PreparedStatement  stmt=con.prepareStatement(qry);
                         
            stmt.setString(1,name);
            stmt.setString(2,email);
            stmt.setString(3,message);
            
			
			stmt.executeUpdate();
           
        
        
    
		

		con.close();
		}
		catch (Exception e)
		{
			out.print(e);
		}	

%>

<h2 style="text-align:center;">Your Query is received!</h2>
</div>

    
<footer>
    <p>&copy; 2024 Novel Nexus. All rights reserved.</p>
</footer>
</body>
</html>
