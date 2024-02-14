<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("login.jsp");
	}
%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--

-->
        <title>MAPS - Our Menu</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-styl.css">
        <link rel="stylesheet" href="css/indexMenu.css">
        

        <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

<body>
	
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

    <div class="header">
        <div class="container">
            <a href="#" class="navbar-brand scroll-top">Ithadakimasu!.....</a>
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!--/.navbar-header-->
                 <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><font size="+3"><a href="index.jsp">Home</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <a href="menu.jsp">Our Menus</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <a href="cart">Cart</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <a href="logout">Logout</a></font>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <a href="logout" class="section-btn"><%=session.getAttribute("name")%></a></li>
                        </ul>
                </div>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
        <!--/.container-->
    </div>
    <!--/.header-->


    <section class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Our Menus</h1>
                    <!-- <p>Curabitur at dolor sed felis lacinia ultricies sit amet vel sem. Vestibulum diam leo, sodales tempor lectus sed, varius gravida mi.</p> -->
                </div>
            </div>
        </div>
    </section>


    <!-- Breakfast menu -->
    <section class="breakfast-menu" id="breakfast-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="breakfast-menu-content">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src="img/breakfast_menu.jpg" alt="Breakfast">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <h2>Breakfast Menu</h2>
                                <div id="owl-breakfast" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/breakfast_item.jpg" alt="">
                                            <div class="price">Rs.30</div>
                                            <div class="text-content">
                                                <h4>Idlis</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="1" name="id">
 												<input type="hidden" value="30" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/breakfast_item1.jpg" alt="">
                                            <div class="price">Rs.120</div>
                                            <div class="text-content">
                                                <h4>Dosas</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="2" name="id">
 												<input type="hidden" value="120" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/breakfast_item2.jpg" alt="">
                                            <div class="price">Rs.150</div>
                                            <div class="text-content">
                                                <h4>Medhu Vada</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="3" name="id">
 												<input type="hidden" value="150" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Lunch menu -->
    <section class="lunch-menu" id="lunch-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="lunch-menu-content">
                        <div class="row">
                            <div class="col-md-7">
                                <h2>Lunch Menu</h2>
                                <div id="owl-lunch" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/lunch_item.jpg" alt="">
                                            <div class="price">Rs.150</div>
                                            <div class="text-content">
                                                <h4>Maharaja Thali</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="4" name="id">
 												<input type="hidden" value="150" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/lunch_item1.jpg" alt="">
                                            <div class="price">Rs.160</div>
                                            <div class="text-content">
                                                <h4>Gujarati Thali</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="5" name="id">
 												<input type="hidden" value="160" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/lunch_item2.jpg" alt="">
                                            <div class="price">Rs.200</div>
                                            <div class="text-content">
                                                <h4>Sadhya</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="6" name="id">
 												<input type="hidden" value="200" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src="img/lunch_menu.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Dinner menu -->
    <section class="dinner-menu" id="dinner-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="dinner-menu-content">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src="img/dinner_menu.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <h2>Dinner Menu</h2>
                                <div id="owl-dinner" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dinner_item.jpg" alt="">
                                            <div class="price">Rs.100</div>
                                            <div class="text-content">
                                                <h4>Panneer Paratha</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="7" name="id">
 												<input type="hidden" value="100" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dinner_item1.jpg" alt="">
                                            <div class="price">Rs.120</div>
                                            <div class="text-content">
                                                <h4>Pulav</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="8" name="id">
 												<input type="hidden" value="120" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dinner_item2.jpg" alt="">
                                            <div class="price">Rs.140</div>
                                            <div class="text-content">
                                                <h4>South Indian Dinner</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="9" name="id">
 												<input type="hidden" value="140" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Desserts menu -->
    <section class="desserts-menu" id="desserts-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="desserts-menu-content">
                        <div class="row">
                            <div class="col-md-7">
                                <h2>Desserts Menu</h2>
                                <div id="owl-desserts" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dessert_item.jpg" alt="">
                                            <div class="price">Rs.50</div>
                                            <div class="text-content">
                                                <h4>Gulab Jamun</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="10" name="id">
 												<input type="hidden" value="50" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dessert_item1.jpg" alt="">
                                            <div class="price">Rs.40</div>
                                            <div class="text-content">
                                                <h4>Kheer</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="11" name="id">
 												<input type="hidden" value="40" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img src="img/dessert_item2.jpg" alt="">
                                            <div class="price">Rs.30</div>
                                            <div class="text-content">
                                                <h4>Kulfi</h4>
                                                <!-- <p>Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...</p> -->
												<form method="post" action="addToCartList">
												<label for="quantity">Quantity</label>
 												<input type="number" name="quantity" style="width: 30%;">
 												<input type="hidden" value="12" name="id">
 												<input type="hidden" value="30" name="price">
												<input type="submit" name="product" value="Add to Cart" style="align: center;">
												</form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src="img/dessert_item.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- <section id="book-table">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading">
                        <h2>Book Your Table Now</h2>
                    </div>
                </div>
                <div class="col-md-4 col-md-offset-2">
                    <div class="left-image">
                        <img src="img/book_left_image.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="right-info">
                        <h4>Reservation</h4>
                        <form id="form-submit" action="" method="get">
                            <div class="row">
                                <div class="col-md-6">
                                    <fieldset>
                                        <select required name='day' onchange='this.form.()'>
                                            <option value="">Select day</option>
                                            <option value="Monday">Monday</option>
                                            <option value="Tuesday">Tuesday</option>
                                            <option value="Wednesday">Wednesday</option>
                                            <option value="Thursday">Thursday</option>
                                            <option value="Friday">Friday</option>
                                            <option value="Saturday">Saturday</option>
                                            <option value="Sunday">Sunday</option>
                                        </select>
                                    </fieldset>
                                </div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <select required name='hour' onchange='this.form.()'>
                                            <option value="">Select hour</option>
                                            <option value="10-00">10:00</option>
                                            <option value="12-00">12:00</option>
                                            <option value="14-00">14:00</option>
                                            <option value="16-00">16:00</option>
                                            <option value="18-00">18:00</option>
                                            <option value="20-00">20:00</option>
                                            <option value="22-00">22:00</option>
                                        </select>
                                    </fieldset>
                                </div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <input name="name" type="name" class="form-control" id="name" placeholder="Full name" required="">
                                    </fieldset> 
                                </div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <input name="phone" type="phone" class="form-control" id="phone" placeholder="Phone number" required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <select required class="person" name='persons' onchange='this.form.()'>
                                            <option value="">How many persons?</option>
                                            <option value="1-Person">1 Person</option>
                                            <option value="2-Persons">2 Persons</option>
                                            <option value="3-Persons">3 Persons</option>
                                            <option value="4-Persons">4 Persons</option>
                                            <option value="5-Persons">5 Persons</option>
                                            <option value="6-Persons">6 Persons</option>
                                        </select>
                                    </fieldset>
                                </div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="btn">Book Table</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section> -->



    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <p>Copyright &copy; Team MAPS</p>
                </div>
                <div class="col-md-4">
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <p>MAPS Pvt. Ltd.</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

<!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>	-->
    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "invalidQuantity") {
			swal("Warning!", "Enter quantity to add the item", "error");
		} else if(status == "addToCartSuccess"){
			swal("Success!", "Item added to the cart successfully", "success");
		} else if(status == "failed"){
			swal("Failed!","Item not added to the cart","error");
		}
	</script>
    
</body>
</html>