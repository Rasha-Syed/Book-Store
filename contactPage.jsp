<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
       body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
           /* background-image: url('https://png.pngtree.com/background/20210715/original/pngtree-sky-blue-abstract-background-design-line-art-background-design-picture-image_1255170.jpg');*/
            color: #333;
        }

        header {
            background-color: #4b0082; /* Dark purple */
            color: white;
            padding: 10px 0;
            text-align: center;
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

        nav ul {
            list-style-type: none;
            padding: 0;
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

        nav ul li a:hover {
            color: black; /* Dark purple */
        }

        nav ul li a img {
            width: 30px;
            height: 30px;
            vertical-align: middle;
            margin-left: 10px;
        }

        .container {
            width: 80%;
            margin: 0 auto; /* Center the container */
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
            background-color: transparent;
            border-radius: 8px;
            box-shadow: none;
            margin-top: 50px;
        }

        .form-container {
            width: 100%;
        }

        form {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input,
        textarea {
            width: calc(100% - 16px); /* Adjusted width to accommodate padding */
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: none; /* Prevent textarea resizing */
        }

        button {
            background-color: #4b0082; /* Dark purple */
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #6a5acd; /* Slate blue */
        }

        

       

    </style>
</head>

<body>
<header>
   <h1>NOVEL NEXUS</h1>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="book.jsp">Books</a></li>
            <li><a href="contactPage.jsp">Contact</a></li>
            <!--<li><a href="login.html" id="loginLink">Login</a></li>
    <li><a href="logout.jsp" id="logoutLink" style="display:none;">Logout</a></li>-->
    <% 
                    String user = (String) session.getAttribute("user");
                    if (user == null) {
                %>
                    <li><a href="login.html">Login</a></li>
                <% 
                    } else {
                %>
                    <li><a href="logout.jsp">Logout</a></li>
                <% 
                    }
                %>
            <li class="icons"><a href="user.jsp"><img src="https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=" alt="User" style="width: 30px; height: 30px;"></a></li>
            <li class="icons"><a href="cartdis.jsp"><img src="https://t3.ftcdn.net/jpg/03/14/84/68/360_F_314846831_5jJsC7Us9obgwMjRDqFhs04dodzvnZvi.jpg" alt="Cart" style="width: 30px; height: 30px;"></a></li>
        </ul>
		  </nav>
</header>
<div class="container">
    <form onsubmit="return validateForm()">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea><br>

        <button type="submit">Submit</button>
    </form>
</div>
    <script>
        function validateForm() {
    var name = document.getElementById("name").value.trim();
    var email = document.getElementById("email").value.trim();
    var message = document.getElementById("message").value.trim();

    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (name === null || typeof name !== "string" || name.length < 5) {
        alert("Please enter a valid name (at least 5 characters)");
        return false;
    }

    if (!emailRegex.test(email)) {
        alert("Please enter a valid email address");
        return false;
    }

    if (message === null || typeof message !== "string") {
        alert("Please enter a valid message");
        return false;
    }

    
    alert("Your Query is received!");

	setTimeout(function() {
        window.location.href = "contact.jsp";
    }, 10000);


  
    return true;
}

</script>

</body>
</html>
