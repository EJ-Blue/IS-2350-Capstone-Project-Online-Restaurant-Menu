<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="CapStoneProjIS2350.MenuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Byte Burgers Menu</title>

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #d2eae6;
            margin: 0;
            padding: 0;
        }

        .menu-container {
            width: 70%;
            margin: 40px auto;
            background: #f8f6f1;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        .menu-container:hover {
            box-shadow: 0 12px 50px rgba(0,0,0,0.12);
        }
        .menu-title {
            display: block;
            text-align: center;
            font-size: 50px;;
            font-weight: bold;
            margin-top: 20px;
            margin-bottom: 12px;
            color: #222;
            letter-spacing: 1px;
        }

        h1 {
            font-size: 32px;
            margin-top: 40px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 5px;
        }

        h2 {
            font-size: 24px;
            margin-top: 25px;
            color: #444;
        }

        ul {
            list-style: none;
            padding-left: 0;
        }

        li {
            margin: 10px 0;
            font-size: 18px;
            font-weight: 600;
        }

        .caption {
            font-size: 14px;
            color: #666;
            margin-top: 6px;
            margin-bottom: 12px;
            padding-left: 5px;
        }
        .price {
                float: right;
                font-weight: 600;
                color: #333;
        }
        li:hover {
        color: #0078ff;
        transition: 0.2s ease;
        transform: translateX(4px);
        }
        .nav-container {
        display: flex;
        justify-content: center;
        gap: 25px;
        padding: 15px 20px;
        margin: 0 auto;
        width: fit-content;
        border: 2px solid #3f8ca8;
        border-radius: 10px;
        background: #fff8e6;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .nav-link {
        text-decoration: none;
        color: #222;
        font-size: 1.1rem;
        padding: 8px 12px;
        position: relative;
        transition: color 0.2s ease, transform 0.2s ease;
        }
        .nav-link::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: -3px;
            width: 0%;
            height: 2px;
            background: #3f8ca8;
            transition: width 0.25s ease;
        }
        .nav-link:hover {
            color: #3f8ca8;
            transform: translateY(-2px);
        }
        .nav-link:hover::after {
            width: 100%;
        }
        .popup {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.7);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

        .popup:target {
            display: flex;
        }

        .popup img {
            max-width:auto;
            max-height: auto;
            border-radius: 10px;
        }

        .close-btn {
            position: absolute;
            top: 20px;
            right: 30px;
            font-size: 30px;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu-container">
            <asp:Label ID="greetingM" runat="server" Text="Byte Burgers Menu" CssClass="menu-title"></asp:Label>

             <div class="nav-container">
            <a href="WelcomePage.aspx" class="nav-link">Home</a>
            <a href="AboutPage.aspx" class="nav-link">About Us</a>
            <a href="SpecialsPage.aspx" class="nav-link">Specials</a>
            <a href="ReservationsPage.aspx" class="nav-link">Reservations</a>
            </div>
        
            <h1>Appetizers</h1>
            <ul>
    <li>
    <a href="#cachefries">Cache Fries</a><span class="price">$6.99</span>
    <p class="caption">Crispy fries with melted cheddar cheese, bacon, green onions, & spicy firewall seasoning</p>
    </li>

    <li>
    <a href="#microchipminis">Microchip Minis</a><span class="price">$9.99</span>
    <p class="caption">Mini deep-fried cheese bites with our signature sauce</p>
    </li>

    <li>
    <a href="#nachostack">The Nacho Stack</a><span class="price">$8.99</span>
    <p class="caption">A tall stack of layered nachos with queso and pico</p>
    </li>

    <li>
    <a href="#bytesliders">Byte Burgers</a><span class="price">$10.99</span>
    <p class="caption">Small byte sized sliders with beef, american cheese, & lettuce and our signature sauce</p>
    </li>

            </ul>
            <h1>Entrees</h1>
            <h2>Big Byte Burgers</h2>
            <ul>
                <li>
                    <a href="#stackburger">The Stack Burger</a><span class="price">$12.99</span>
                    <p class="caption">Double‑layered beef stack with melted cheddar, lettuce, tomato and pickles</p>
                </li>

                <li>
                    <a href="#megabyteburger">The Megabyte Burger</a><span class="price">$14.99</span>
                    <p class="caption">A massive half-pound burger with melted cheddar, lettuce, tomato, pickles and our signature sauce</p>
                </li>


            </ul>
            <h2>Handhelds</h2>
             <ul>
              <li>
                <a href="#terminaltoastie">Terminal Toastie</a><span class="price">$11.99</span>
                <p class="caption">Grilled cheese with a golden crunch</p>
            </li>

            <li>
                <a href="#debugdog">The Debug Dog</a><span class="price">$10.99</span>
                <p class="caption">Loaded hot dog with cheddar cheese, green onions, and drizzled in our signature sauce</p>
            </li>

            <li>
                <a href="#betaburrito">Beta Burrito</a><span class="price">$13.99</span>
                <p class="caption">A test‑build burrito packed with beef, melted cheese, and fresh vegetables</p>
            </li>

             </ul>
           <h2>Byte Platters</h2>
            <ul>
            <li>
            <a href="#chickenshrimp">Chicken & Shrimp Bytes</a><span class="price">$18.99</span>
            <p class="caption">Crispy bites with dipping sauce</p>
        </li>

        <li>
            <a href="#steakchicken">Steak & Chicken Bytes</a><span class="price">$20.99</span>
            <p class="caption">A dual‑core protein combo</p>
        </li>

        <li>
            <a href="#vegetarianbytes">Vegetarian Bytes</a><span class="price">$16.99</span>
            <p class="caption">A plant‑powered platter with breaded cauliflower and zucchini bites</p>
        </li>

            </ul>
        <p style="text-align:center; margin-top:40px; color:#888;">All Entrees served with two sides</p>
        
        <h1>Kids Menu</h1>
        <ul>
            <li>
                <a href="#bitburger">Bit Burger</a><span class="price">$7.99</span>
                <p class="caption">A kid‑sized classic cheeseburger served with fries</p>
            </li>

            <li>
                <a href="#micromac">Micro Mac & Cheese</a><span class="price">$7.99</span>
                <p class="caption">Creamy, cheesy, kid‑approved macaroni and cheese served with grapes</p>
            </li>

        </ul>

            <h1>Sweets</h1>
             <ul>
            <li>
                <a href="#raspberrypie">Raspberry Pi(e)</a><span class="price">$9.99</span>
                <p class="caption">A slice of raspberry‑filled pie with a flaky crust</p>
            </li>

            <li>
                <a href="#sundae">Sweetware Sundae</a><span class="price">$6.99</span>
                <p class="caption">Vanilla ice cream with chocolate and caramel drizzle and a cherry on top</p>
            </li>

            <li>
                <a href="#cachecookies">Cache Cookies</a><span class="price">$8.99</span>
                <p class="caption">Freshly baked cookies with a hint of chocolate</p>
            </li>

            <li>
                <a href="#datadots">Data Drizzle Dots</a><span class="price">$10.99</span>
                <p class="caption">Colorful, crispy mini donuts with a choice of glaze</p>
            </li>

             </ul>
            <h1>Sides</h1>
            <ul>
                <li>
                <a href="#firewallfries">Firewall Fries</a><span class="price">$3.99</span>
                <p class="caption">Spicy fries with a kick of our Firewall seasoning</p>
            </li>

            <li>
                <a href="#onionloops">Onion Loops</a><span class="price">$4.99</span>
                <p class="caption">Crispy golden rings tossed in our Firewall seasoning</p>
            </li>

            <li>
                <a href="#broccoli">Bit sized brocoli</a><span class="price">$2.99</span>
                <p class="caption">Crispy golden rings tossed in our Firewall seasoning</p>
            </li>

             </ul>

        <h1>Beverages</h1>
        <ul>
            <li>
            <a href="#frostbyte">Frostbyte </a><span class="price">$2.99</span>
            <p class="caption">A chilling blue raspberry slush</p>
            </li>

            <li>
            <a href="#binarybrew">Binary Brew</a><span class="price">$4.99</span>
            <p class="caption">Two‑tone iced cold brew blend with choice of added flavor: vanilla or caramel</p>
            </li>

            <li>
             <a href="#rampunch">RAM Punch</a><span class="price">$2.99</span>
            <p class="caption">A fruity, energizing punch</p>
            </li>

            <li>
              <a href="#datadrip">Data Drip Coffee</a><span class="price">$3.99</span>
            <p class="caption">Freshly brewed drip coffee with a bold flavor</p>
            </li>

        </ul>
        <p style="text-align:center; margin-top:40px; color:#888;">Byte Burgers • Est. 2026 • Fort Wayne, IN</p>
        </div>

        <!-- this is to make the images work -->
        <div id="cachefries" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="cachefries.png" alt="">
        </div>

        <div id="microchipminis" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="microchip.png" alt="">
        </div>

        <div id="nachostack" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="machstack.png" alt="">
        </div>

        <div id="bytesliders" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="byteburger.png" alt="">
        </div>

        <div id="stackburger" class="popup">
        <a href="#" class="close-btn">X</a>
         <img src="stackburg.png" alt="The Stack Burger">
        </div>

        <div id="megabyteburger" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="megavyteburger.png" alt="The Megabyte Burger">
        </div>

        <div id="terminaltoastie" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="toastie.png" alt="Terminal Toastie">
        </div>

        <div id="debugdog" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="debugdog.png" alt="The Debug Dog">
        </div>

        <div id="betaburrito" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="betaburrito.png" alt="Beta Burrito">
        </div>

        <div id="chickenshrimp" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="chicknshrimp.png" alt="Chicken & Shrimp Bytes">
        </div>

        <div id="steakchicken" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="chicknsteak.png" alt="Steak & Chicken Bytes">
        </div>

        <div id="vegetarianbytes" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="veggiebites.png" alt="Vegetarian Bytes">
        </div>


        <div id="bitburger" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="bitburger.png" alt="Bit Burger">
        </div>
        <div id="micromac" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="mac.png" alt="Micro Mac & Cheese">
        </div>

        <div id="raspberrypie" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="pi(e).png" alt="Raspberry Pi(e)">
        </div>

        <div id="sundae" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="sundae.png" alt="Sweetware Sundae">
        </div>

        <div id="cachecookies" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="cachecookie.png" alt="Cache Cookies">
        </div>

        <div id="datadots" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="drizzledots.png" alt="Data Drizzle Dots">
        </div>
         <div id="firewallfries" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="firewallfries.png" alt="Firewall Fries">
        </div>

        <div id="onionloops" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="onion loops.png" alt="Onion Loops">
        </div>

        <div id="broccoli" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="bitbroc.png" alt="Bit Sized Broccoli">
        </div>

        <div id="frostbyte" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="frostbyte.png" alt="Frostbyte">
        </div>

        <div id="binarybrew" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="binarybrew.png" alt="Binary Brew">
        </div>

        <div id="rampunch" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="rampunch.png" alt="RAM Punch">
        </div>

        <div id="datadrip" class="popup">
            <a href="#" class="close-btn">X</a>
            <img src="dripcoffee.png" alt="Data Drip Coffee">
        </div>

    
    </form>
</body>
</html>
