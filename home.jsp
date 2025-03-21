<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookstore</title>
    

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



.hero {
    text-align: center;
    padding: 50px 0;
    background-color: transparent;
    box-shadow: none;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4b0082; /* Dark purple */
    color: white;
    text-decoration: none;
    /*margin-top: 10px;*/
   
    justify-content: space-around; /* Evenly space the buttons */
    margin-top: 10px;
}



.featured-books {
    padding: 20px;
}

.row {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}



.book img {
    max-width: 100%;
    height: auto;
    margin-bottom: 10px;
}
.search-bar {
    margin-top: 20px;
    text-align: center;
}

.search-bar input[type="text"] {
    padding: 8px;
    width: 1000px; /* Increased width */
    
    border-radius: 5px;
    border: 1px solid #ccc;
    margin-right: 5px;
}

.search-bar button {
    padding: 8px 15px;
    background-color: #4b0082; /* Dark purple */
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
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






.book {
    width: 30%;
    padding: 20px;
    text-align: center;
    border: 1px solid #ccc;
    margin-bottom: 30px; /* Add more margin between book images and footer */
    background-color: #fff;
    color: #333;
}

.btn-group {
    display: flex; /* Use flexbox for layout */
    justify-content: center; /* Center the buttons horizontally */
    margin-top: 10px;
}

.btn-group button {
    margin: 0 5px; /* Add some space between the buttons */
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
        <h1>NOVEL NEXUS</h1>
        
<nav>
    <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="book.jsp">Books</a></li>
	<li><a href="contactPage.jsp">Contact</a></li>
	<!--<li><a href="login.html">Login</a></li>
    <li><a href="logout.jsp">Logout</a></li>-->
    <!-- Conditional rendering: Show Login if user is not logged in -->
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
        <li class="icons"><a href="user.jsp"><img src="https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=" alt="User" style="width: 30px; height: 30px;></a></li>
        <li class="icons"><a href="cartdis.jsp"><img src="https://t3.ftcdn.net/jpg/03/14/84/68/360_F_314846831_5jJsC7Us9obgwMjRDqFhs04dodzvnZvi.jpg" alt="Cart" style="width: 30px; height: 30px;"></a></li>
    </ul>
</nav>

    </header>
    <!--<script>
        window.onload = function() {
            // Get the URL query parameters
            var urlParams = new URLSearchParams(window.location.search);
            var loggedIn = urlParams.get('loggedIn');  // Check if loggedIn parameter exists

            // Get the login and logout elements
            var loginLink = document.getElementById("loginLink");
            var logoutLink = document.getElementById("logoutLink");

            // Toggle the visibility based on login status
            if (loggedIn === 'true') {
                loginLink.style.display = 'none'; // Hide login link
                logoutLink.style.display = 'inline'; // Show logout link
            } else {
                loginLink.style.display = 'inline'; // Show login link
                logoutLink.style.display = 'none'; // Hide logout link
            }
        };
    </script>-->
    <section class="hero">
	<div class="search-bar">
    <input type="text" placeholder="Search...">
    <button>Search</button>
</div>
<!--<div class="user-cart-icons">
    <a href="#"><img src="user-icon.png" alt="User"></a>
    <a href="#"><img src="https://i.pinimg.com/originals/2b/35/a4/2b35a4763a31b6f5f40d9de9d7e05f88.jpg" alt="Cart"></a>
</div>-->

        <h2>Discover Your Next Great Read</h2>
        <p>Explore a wide selection of books in various genres.</p>
        <a href="#" class="btn">Shop Now</a>
    </section>
    <section class="featured-books">
        <h1 align="center">Featured Books</h1>
        <h2 style="color:red;">Now Trending</h2>
        <div class="row">
            <div class="book">
              
                <img src="https://bookriot.com/book-riots-deals-of-the-day-for-september-21st-2019/after-the-funeral-by-agatha-christie/" alt="funeral" style="width: 350px; height: 500px;">
                                
<h3>After the Funeral</h3>
                <p>Price: $900.90</p>
                <div class="btn-group">
        <form action="buy.jsp" method="post">
            <input type="hidden" name="id" value="1231">
            <input type="hidden" name="url" value="https://bookriot.com/book-riots-deals-of-the-day-for-september-21st-2019/after-the-funeral-by-agatha-christie/">
            <input type="hidden" name="title" value="After the Funeral">
            <input type="hidden" name="author" value="Agatha Christie">
            <input type="hidden" name="price" value="900.90">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="1231">
            <input type="hidden" name="url" value="https://bookriot.com/book-riots-deals-of-the-day-for-september-21st-2019/after-the-funeral-by-agatha-christie/">
            <input type="hidden" name="title" value="After the Funeral">
            <input type="hidden" name="author" value="Agatha Christie">
            <input type="hidden" name="price" value="900.90">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
    </div>
				
            </div>
			<div class="book">
                <img src="https://nerdybookclub.files.wordpress.com/2015/05/red-queen.png" alt="red" style="width: 350px; height: 500px;">
                <h3>Red Queen</h3>
                <p>Price: $1000.99</p>
                <div class="btn-group">
                    <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="1232">
                        <input type="hidden" name="url" value="https://nerdybookclub.files.wordpress.com/2015/05/red-queen.png">
                        <input type="hidden" name="title" value="Red Queen">
                        <input type="hidden" name="author" value="Victoria Aveyard">
                        <input type="hidden" name="price" value="1000.99">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="1232">
            <input type="hidden" name="url" value="https://nerdybookclub.files.wordpress.com/2015/05/red-queen.png">
            <input type="hidden" name="title" value="Red Queen">
            <input type="hidden" name="author" value="Victoria Aveyard">
            <input type="hidden" name="price" value="1000.99">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
				</div>
				<div class="book">
                <img src="https://i.pinimg.com/originals/7d/f5/b0/7df5b0481d7d4c0dee7b7027161f9c1f.png" alt="jjk" style="width: 350px; height: 500px;">
                <h3>Jujutsu Kaisen</h3>
                <p>Price: $1200.99</p>
                <div class="btn-group">
                     <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="1233">
                        <input type="hidden" name="url" value="https://i.pinimg.com/originals/7d/f5/b0/7df5b0481d7d4c0dee7b7027161f9c1f.png">
                        <input type="hidden" name="title" value="Jujutsu Kaisen">
                        <input type="hidden" name="author" value="Gege Akutami">
                        <input type="hidden" name="price" value="1200.99">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="1233">
            <input type="hidden" name="url" value="https://i.pinimg.com/originals/7d/f5/b0/7df5b0481d7d4c0dee7b7027161f9c1f.png">
            <input type="hidden" name="title" value="Jujutsu Kaisen">
            <input type="hidden" name="author" value="Gege Akutami">
            <input type="hidden" name="price" value="1200.99">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
				</div>
            <!-- Repeat the above div for each book -->
            <!-- Total of 2 to 3 divs per row -->
        </div>
        <h2 style="color:red;">Best Sellers</h2>
		<div class="row">
            <div class="book">
                <img src="https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/y/f/u/shatter-me-original-imaggbx9yz8cehtf.jpeg?q=20&crop=false" alt="shatter" style="width: 350px; height: 500px;">
                <h3>Shatter Me</h3>
                <p>Price: $999.89</p>
                <div class="btn-group">
                    <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="1234">
                        <input type="hidden" name="url" value="https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/y/f/u/shatter-me-original-imaggbx9yz8cehtf.jpeg?q=20&crop=false">
                        <input type="hidden" name="title" value="Shatter Me">
                        <input type="hidden" name="author" value="Tahereh Mafi">
                        <input type="hidden" name="price" value="999.89">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="1234">
            <input type="hidden" name="url" value="https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/y/f/u/shatter-me-original-imaggbx9yz8cehtf.jpeg?q=20&crop=false">
            <input type="hidden" name="title" value="Shatter Me">
            <input type="hidden" name="author" value="Tahereh Mafi">
            <input type="hidden" name="price" value="999.89">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
				 </div>
			<div class="book">
                <img src="https://miblart.com/wp-content/uploads/2020/11/jrQV-0AQ-683x1024.jpg" alt="angel" style="width: 350px; height: 500px;">
                <h3>An Angel Fallen</h3>
                <p>Price: $555.67</p>
                <div class="btn-group">
                    <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="1235">
                        <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2020/11/jrQV-0AQ-683x1024.jpg">
                        <input type="hidden" name="title" value="An Angel Fallen">
                        <input type="hidden" name="author" value="Andy Graham">
                        <input type="hidden" name="price" value="555.67">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="1235">
            <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2020/11/jrQV-0AQ-683x1024.jpg">
            <input type="hidden" name="title" value="An Angel Fallen">
            <input type="hidden" name="author" value="Andy Graham">
            <input type="hidden" name="price" value="555.67">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
				</div>
				<div class="book">
                <img src="https://static.wikia.nocookie.net/the-red-queen/images/f/fa/Aveyard_War_Storm.jpg/revision/latest?cb=20171118003116" alt="war" style="width: 350px; height: 500px;">
                <h3>War Storm</h3>
                <p>Price: $745.34</p>
                <div class="btn-group">
                    <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="12346">
                        <input type="hidden" name="url" value="https://static.wikia.nocookie.net/the-red-queen/images/f/fa/Aveyard_War_Storm.jpg/revision/latest?cb=20171118003116">
                        <input type="hidden" name="title" value="War Storm">
                        <input type="hidden" name="author" value="Victoria Aveyard">
                        <input type="hidden" name="price" value="745.34">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="12346">
            <input type="hidden" name="url" value="https://static.wikia.nocookie.net/the-red-queen/images/f/fa/Aveyard_War_Storm.jpg/revision/latest?cb=20171118003116">
            <input type="hidden" name="title" value="War Storm">
            <input type="hidden" name="author" value="Victoria Aveyard">
            <input type="hidden" name="price" value="745.34">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
				</div>
             
        </div>



       <h2 style="color:red;">New Arrivals</h2>
        <div class="row">
            <div class="book">
                <img src="https://m.media-amazon.com/images/I/61bLUqwvv6L._AC_UF1000,1000_QL80_.jpg" alt="girl" style="width: 350px; height: 500px;">
                <h3>The Girl in Room 105</h3>
                <p>Price: $888.34</p>
                <div class="btn-group">
                    <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="1237">
                        <input type="hidden" name="url" value="https://m.media-amazon.com/images/I/61bLUqwvv6L._AC_UF1000,1000_QL80_.jpg">
                        <input type="hidden" name="title" value="The Girl in Room 105">
                        <input type="hidden" name="author" value="Chetan Bhagat">
                        <input type="hidden" name="price" value="888.34">
            <button type="submit" class="btn">Buy Now</button>
        </form>
            <form action="cart.jsp" method="post">
                <input type="hidden" name="id" value="1237">
                <input type="hidden" name="url" value="https://m.media-amazon.com/images/I/61bLUqwvv6L._AC_UF1000,1000_QL80_.jpg">
                <input type="hidden" name="title" value="The Girl in Room 105">
                <input type="hidden" name="author" value="Chetan Bhagat">
                <input type="hidden" name="price" value="888.34">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
            </div>
            <div class="book">
                <img src="https://miblart.com/wp-content/uploads/2023/11/premium-6-768x1208-1-651x1024.jpeg" alt="mercy" style="width: 350px; height: 500px;">
                <h3>Fortune's Shadow Mercy's Light</h3>
                <p>Price: $777.77</p>
                <div class="btn-group">
                    <form action="buy.jsp" method="post">
                        <input type="hidden" name="id" value="1238">
                        <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2023/11/premium-6-768x1208-1-651x1024.jpeg">
                        <input type="hidden" name="title" value="Fortune's Shadow Mercy's Light">
                        <input type="hidden" name="author" value="Dennis Riley">
                        <input type="hidden" name="price" value="777.77">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" method="post">
            <input type="hidden" name="id" value="1238">
                        <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2023/11/premium-6-768x1208-1-651x1024.jpeg">
                        <input type="hidden" name="title" value="Fortune's Shadow Mercy's Light">
                        <input type="hidden" name="author" value="Dennis Riley">
                        <input type="hidden" name="price" value="777.77">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
            </div>
			<div class="book">
                <img src="https://miblart.com/wp-content/uploads/2023/11/81NMoMc9eeL._SL1500_-673x1024.jpg" alt="sink" style="width: 350px; height: 500px;">
                <h3>Unsinkable</h3>
                <p>Price: $678.88</p>
                <div class="btn-group">
                   <form action="buy.jsp" method="post">
                    <input type="hidden" name="id" value="1239">
                    <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2023/11/81NMoMc9eeL._SL1500_-673x1024.jpg">
                    <input type="hidden" name="title" value="Unsinkable">
                    <input type="hidden" name="author" value="Jenni L. Walsh">
                    <input type="hidden" name="price" value="678.88">
            <button type="submit" class="btn">Buy Now</button>
        </form>
        <form action="cart.jsp" onclick=addToCart(value) method="post">
            <input type="hidden" name="id" value="1239">
                    <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2023/11/81NMoMc9eeL._SL1500_-673x1024.jpg">
                    <input type="hidden" name="title" value="Unsinkable">
                    <input type="hidden" name="author" value="Jenni L. Walsh">
                    <input type="hidden" name="price" value="678.88">
            <button type="submit" class="btn">Add to Cart</button>
        </form>
                </div>
				</div>
            <!-- Repeat the above div for each row -->
		
        </div>
    </section>
   
    <footer>
        <p>&copy; 2024 Novel Nexus. All rights reserved.</p>
    </footer>
</body>
</html>
