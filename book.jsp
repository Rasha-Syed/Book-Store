<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Book Store</title>
    <style>
	body
	{
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            color: #333;
            /*background-image:url('https://png.pngtree.com/background/20210715/original/pngtree-sky-blue-abstract-background-design-line-art-background-design-picture-image_1255170.jpg');*/
            background-size:cover;
      }
	  header
	  {
            background-color: #4b0082; /* Dark purple */
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        footer {
            background-color: #4b0082; /* Dark purple */
            color: white;
            text-align: center;
            padding: 10px 0;
            width: 100%;
            clear: both; /* Clear floats */
        }
        /* Additional styles for navigation */
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
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: transparent; /* White */
            border-radius: 8px;
            box-shadow: none;
        }

        /* New CSS styles for book genres */
        .book-genre {
            margin-top: 20px;
        }

        .book-genre h2 {
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .book-list {
            display: flex;
            flex-wrap: wrap;
            /*justify-content: space-between; /* Adjusted  space between books*/
            gap: 80px;
        }

        .book {
            width: 250px;/*calc(33.33% - 20px); /* Adjusted width to fit 3 books in a row with gap */
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            text-align: center;
        }

        .book:hover {
            transform: translateY(-5px);
        }

        .book img {
            width: 100%; /* Set image width to 100% */
            height: auto; /* Maintain aspect ratio */
            margin-bottom: 10px;
            border-radius: 4px;
            image-rendering: crisp-edges; /* Improve image clarity */
            image-rendering: -moz-crisp-edges; /* Firefox */
            image-rendering: -webkit-optimize-contrast; /* Webkit */
            image-rendering: optimize-contrast; /* Modern browsers */
        }

        .book-title {
            font-weight: bold;
            margin-top: 5px;
            font-size: 16px;
        }

        .book-buttons {
            margin-top: 10px;
            display: flex;
            justify-content: space-between; /* Align buttons side by side */
        }

        .book-buttons button {
            flex: 1; /* Each button takes equal width */
            background-color: #4b0082; /* Dark purple */
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin: 0 5px; /* Add margin between buttons */
        }

        .book-buttons button:hover {
            background-color: #8a2be2; /* Purple */
        }

        /* Footer styles */
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
        <div class="book-genre">
            <h2 style="color:purple;">Manga</h2>
            <div class="book-list">
                <!-- Manga books -->
                <div class="book">
                    <img src="https://images.squarespace-cdn.com/content/v1/571abd61e3214001fb3b9966/1632339911962-4WPRENUTRS7VVXZ553T2/Jujutsu+Kaisen+TV+Anime+Official+Starter+Guide?format=500w" alt="Book 1"> <!-- Placeholder image -->
                    <div class="book-title">Jujutsu Kaisen</div>
                    
                <p>Price: $1200.90</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1240">
                            <input type="hidden" name="url" value="https://images.squarespace-cdn.com/content/v1/571abd61e3214001fb3b9966/1632339911962-4WPRENUTRS7VVXZ553T2/Jujutsu+Kaisen+TV+Anime+Official+Starter+Guide?format=500w">
                            <input type="hidden" name="title" value="Jujutsu Kaisen">
                            <input type="hidden" name="author" value="Gege Akutami">
                            <input type="hidden" name="price" value="1200.90">

                        <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1240">
                            <input type="hidden" name="url" value="https://images.squarespace-cdn.com/content/v1/571abd61e3214001fb3b9966/1632339911962-4WPRENUTRS7VVXZ553T2/Jujutsu+Kaisen+TV+Anime+Official+Starter+Guide?format=500w">
                            <input type="hidden" name="title" value="Jujutsu Kaisen">
                            <input type="hidden" name="author" value="Gege Akutami">
                            <input type="hidden" name="price" value="1200.90">
                        <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
                <div class="book">
                    <img src="https://pbs.twimg.com/media/Ewg071zWUAAkm89.jpg" alt="Book 2"> <!-- Placeholder image -->
                    <div class="book-title">Tokyo Revengers</div>
                    
                        <p>Price: $1100.89</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1241">
                            <input type="hidden" name="url" value="https://pbs.twimg.com/media/Ewg071zWUAAkm89.jpg">
                            <input type="hidden" name="title" value="Tokyo Revengers">
                            <input type="hidden" name="author" value="Ken Wakui">
                            <input type="hidden" name="price" value="1100.89">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1241">
                            <input type="hidden" name="url" value="https://pbs.twimg.com/media/Ewg071zWUAAkm89.jpg">
                            <input type="hidden" name="title" value="Tokyo Revengers">
                            <input type="hidden" name="author" value="Ken Wakui">
                            <input type="hidden" name="price" value="1100.89">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
                <div class="book">
                    <img src="https://cdn.animenewsnetwork.com/thumbnails/max600x600/cms/interest/113659/news_xlarge_shocomi_conan_clearfile_a.jpg" alt="Book 3"> <!-- Placeholder image -->
                    <div class="book-title">Detective Conan</div>
                    <p>Price: $900.42</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1242">
                            <input type="hidden" name="url" value="https://cdn.animenewsnetwork.com/thumbnails/max600x600/cms/interest/113659/news_xlarge_shocomi_conan_clearfile_a.jpg">
                            <input type="hidden" name="title" value="Detective Conan">
                            <input type="hidden" name="author" value="Gosho Aoyama">
                            <input type="hidden" name="price" value="900.42">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1242">
                            <input type="hidden" name="url" value="https://cdn.animenewsnetwork.com/thumbnails/max600x600/cms/interest/113659/news_xlarge_shocomi_conan_clearfile_a.jpg">
                            <input type="hidden" name="title" value="Detective Conan">
                            <input type="hidden" name="author" value="Gosho Aoyama">
                            <input type="hidden" name="price" value="900.42">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <div class="book-genre">
            <h2 style="color:purple;">Detective</h2>
            <div class="book-list">
                <!-- Manga books -->
                <div class="book">
                    <img src="https://www.scrolldroll.com/wp-content/uploads/2021/10/murder-on-the-orient-express-famous-detective-novels.jpg" alt="Book 1"> <!-- Placeholder image -->
                    <div class="book-title">Murder On the Orient Express</div>
                    
                <p>Price: $567.90</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1243">
                            <input type="hidden" name="url" value="https://www.scrolldroll.com/wp-content/uploads/2021/10/murder-on-the-orient-express-famous-detective-novels.jpg">
                            <input type="hidden" name="title" value="Murder On the Orient Express">
                            <input type="hidden" name="author" value="Agatha Christie">
                            <input type="hidden" name="price" value="567.90">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1243">
                            <input type="hidden" name="url" value="https://www.scrolldroll.com/wp-content/uploads/2021/10/murder-on-the-orient-express-famous-detective-novels.jpg">
                            <input type="hidden" name="title" value="Murder On the Orient Express">
                            <input type="hidden" name="author" value="Agatha Christie">
                            <input type="hidden" name="price" value="567.90">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
                <div class="book">
                    <img src="https://m.media-amazon.com/images/I/71froxRealL._AC_UF1000,1000_QL80_.jpg" alt="Book 2"> <!-- Placeholder image -->
                    <div class="book-title">Art in The Blood</div>
                    
                        <p>Price: $789.90</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1244">
                            <input type="hidden" name="url" value="https://m.media-amazon.com/images/I/71froxRealL._AC_UF1000,1000_QL80_.jpg">
                            <input type="hidden" name="title" value="Art in the Blood">
                            <input type="hidden" name="author" value="Bonnie Macbird">
                            <input type="hidden" name="price" value="789.90">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1244">
                            <input type="hidden" name="url" value="https://m.media-amazon.com/images/I/71froxRealL._AC_UF1000,1000_QL80_.jpg">
                            <input type="hidden" name="title" value="Art in the Blood">
                            <input type="hidden" name="author" value="Bonnie Macbird">
                            <input type="hidden" name="price" value="789.90">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
                <div class="book">
                    <img src="https://www.pickfu.com/blog/wp-content/uploads/2018/12/bd93f1cb6821a2ba07c013d53d4a7144c8920463.jpg" alt="Book 3"> <!-- Placeholder image -->
                    <div class="book-title">Jack Knifed</div>
                    <p>Price: $660.28</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1245">
                            <input type="hidden" name="url" value="https://www.pickfu.com/blog/wp-content/uploads/2018/12/bd93f1cb6821a2ba07c013d53d4a7144c8920463.jpg">
                            <input type="hidden" name="title" value="Jack Knifed">
                            <input type="hidden" name="author" value="Christopher Grayson">
                            <input type="hidden" name="price" value="660.28">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1245">
                            <input type="hidden" name="url" value="https://www.pickfu.com/blog/wp-content/uploads/2018/12/bd93f1cb6821a2ba07c013d53d4a7144c8920463.jpg">
                            <input type="hidden" name="title" value="Jack Knifed">
                            <input type="hidden" name="author" value="Christopher Grayson">
                            <input type="hidden" name="price" value="660.28">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="book-genre">
            <h2 style="color:purple;">Fiction</h2>
            <div class="book-list">
                <!-- Manga books -->
                <div class="book">
                    <img src="https://miblart.com/wp-content/uploads/2021/03/img_6054aaa776ae7-683x1024.png" alt="Book 1"> <!-- Placeholder image -->
                    <div class="book-title">Carrie Anne's World</div>
                    
                <p>Price: $550.59</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1246">
                            <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2021/03/img_6054aaa776ae7-683x1024.png">
                            <input type="hidden" name="title" value="Carrie Anne's World">
                            <input type="hidden" name="author" value="Mark Whiteway">
                            <input type="hidden" name="price" value="550.59">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1246">
                            <input type="hidden" name="url" value="https://miblart.com/wp-content/uploads/2021/03/img_6054aaa776ae7-683x1024.png">
                            <input type="hidden" name="title" value="Carrie Anne's World">
                            <input type="hidden" name="author" value="Mark Whiteway">
                            <input type="hidden" name="price" value="550.59">

                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
                <div class="book">
                    <img src="https://i.pinimg.com/564x/a3/1a/58/a31a58fc28c0253ee1d6cce30594caae.jpg" alt="Book 2"> <!-- Placeholder image -->
                    <div class="book-title">Monstrous Lies</div>
                    
                        <p>Price: $779.89</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1247">
                            <input type="hidden" name="url" value="https://i.pinimg.com/564x/a3/1a/58/a31a58fc28c0253ee1d6cce30594caae.jpg">
                            <input type="hidden" name="title" value="Monstrous Lies">
                            <input type="hidden" name="author" value="Shina James">
                            <input type="hidden" name="price" value="779.89">

                            <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1247">
                            <input type="hidden" name="url" value="https://i.pinimg.com/564x/a3/1a/58/a31a58fc28c0253ee1d6cce30594caae.jpg">
                            <input type="hidden" name="title" value="Monstrous Lies">
                            <input type="hidden" name="author" value="Shina James">
                            <input type="hidden" name="price" value="779.89">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
                <div class="book">
                    <img src="https://notionpress.com/blog/wp-content/uploads/2016/07/iconic-book-covers-.png" alt="Book 3"> <!-- Placeholder image -->
                    <div class="book-title">The Book Thief</div>
                    <p>Price: $449.33</p>
                    <div class="book-buttons">
                        <form action="buy.jsp" method="post">
                            <input type="hidden" name="id" value="1248">
                            <input type="hidden" name="url" value="https://notionpress.com/blog/wp-content/uploads/2016/07/iconic-book-covers-.png">
                            <input type="hidden" name="title" value="The Book Thief">
                            <input type="hidden" name="author" value="Markus Zusak">
                            <input type="hidden" name="price" value="449.93">

                        <button>Buy Now</button>
                    </form>
                    <form action="cart.jsp" method="post">
                        <input type="hidden" name="id" value="1248">
                            <input type="hidden" name="url" value="https://notionpress.com/blog/wp-content/uploads/2016/07/iconic-book-covers-.png">
                            <input type="hidden" name="title" value="The Book Thief">
                            <input type="hidden" name="author" value="Markus Zusak">
                            <input type="hidden" name="price" value="449.93">
                            <button>Add To Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
	<footer>
        &copy; 2024 Novel Nexus. All rights reserved.
    </footer>
    
</body>
</html>
