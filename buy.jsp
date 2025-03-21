<%@ page import="java.sql.*"%>
<%

        String uname = (String)session.getAttribute("user");
        if(uname!=null)
{
    int id = Integer.parseInt(request.getParameter("id"));

       String title = request.getParameter("title");
	   String author=request.getParameter("author");
	   float price = Float.parseFloat(request.getParameter("price"));

    

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Now</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image:url('https://png.pngtree.com/background/20210715/original/pngtree-sky-blue-abstract-background-design-line-art-background-design-picture-image_1255170.jpg');
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 700px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    input[type="email"],
    input[type="number"],
    textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #800080;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #6a006a;
    }

</style>

<body>
    <div class="container">
        <h1>Buy Now</h1>
        <form action="bought.jsp" method="post" onsubmit="return validateForm()">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="address">Address:</label>
            <textarea id="address" name="addr" required></textarea><br><br>

            <label for="card_number">Card Number:</label>
            <input type="number" id="card" name="card" required><br><br>

            <label for="expiry_date">Expiry Date:</label>
            <input type="text" id="expiry_date" name="expiry_date" required><br><br>

            <label for="cvv">CVV:</label>
            <input type="number" id="cvv" name="cvv" required><br><br>

            <label for="copies">No.of Copies:</label>
            <input type="number" id="copy" name="copies" required><br><br>
            <input type="hidden" id="id" name="id" value="<%=id%>">
    <input type="hidden" id="title" name="title" value="<%=title%>">
    <input type="hidden" id="author" name="author" value="<%=author%>">
    <input type="hidden" id="price" name="price" value="<%=price%>">
            

            <input type="submit" value="Buy Now" onclick="showAlert()">
        </form>
    </div>
    <script>
        function showAlert() {
            alert("Thank you for your purchase!");
        }

        function validateForm() {
            var name = document.getElementById('name').value;
            var email = document.getElementById('email').value;
            var address = document.getElementById('addr').value;
            var cardNumber = document.getElementById('card').value;
            var expiryDate = document.getElementById('expiry_date').value;
            var cvv = document.getElementById('cvv').value;
            var copies = document.getElementById('copies').value;

            if (name === '' || email === '' || address === '' || cardNumber === '' || expiryDate === '' || cvv === '') {
                alert('All fields are required');
                return false;
            }

            if (isNaN(cardNumber) || isNaN(cvv) || isNaN(copies)) {
                alert('Card number and CVV and No.of copies must be numbers');
                return false;
            }

            return true;
        }
    </script>
</body>

</html>

</html>


<%
}
else
{
    response.sendRedirect("login.html");
}
%>

