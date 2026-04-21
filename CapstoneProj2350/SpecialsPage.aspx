<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialsPage.aspx.cs" Inherits="CapstoneProj2350.SpecialsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Byte Burgers Specials</title>

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
        margin-top: -6px;
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
    .title-main {
    display: block;
    text-align: center;
    font-size: 2.2rem;
    font-weight: bold;
    margin-top: 20px;
    color: #222;
    letter-spacing: 1px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="greetingS" Text="Check out our weekly specials below!" class="title-main" runat="server" />

             <div class="nav-container">
            <a href="WelcomePage.aspx" class="nav-link">Home</a>
            <a href="AboutPage.aspx" class="nav-link">About Us</a>
            <a href="MenuPage.aspx" class="nav-link">Menu</a>
            <a href="ReservationsPage.aspx" class="nav-link">Reservations</a>
            </div>
            <div class="menu-container">
            <h1>Entrees</h1>
            <h2>Special Items</h2>
            <ul>
                <li>The Gigabyte<span class="price"> $16.99</span>

                <p class="caption">A 1 pound beast of a burger with all the fixins in the kitchen. Pair this bad boy with a pound of our signature Cache Fries and a large drink to boot and you have the makings of dinner you can never top</p></li>

                <li>The Pyhton<span class="price"> $13.99</span>

                <p class="caption">This foot long sausage comes smothered with our house sauce and homemade sauerkraut. No snake can be fully complete with scales either so freshly made kitchen chips come served up nice and hot alongside this lengthy meal. House sauce or BBQ can be added as dipping sauce.</p></li>

                <li>The HTMLter<span class="price"> $15.99</span>

                <p class="caption">This patty melt contains half a pound of fresh beef and the finest Swiss and Provolone Cheese from the local community. Smothered with the Head Chef’s famous grilled onion pepper combo, this monster of a burger packs the perfect combo of comfort and savor that Byte Burger is known for. Pair this web page sized meal with either fries or chips and your choice of sauce. </p></li>

                <li>While Loop Wings<span class="price"> $11.99</span>

                <p class="caption">Whether boneless or bone-in, these wings are practically endless as long as you want them. Can be smothered in Buffalo, BBQ, Garlic Parmesan, etc. Inclued with Cache Fries</p></li>

                <li>Nashville Firewall Sandwich<span class="price"> $14.99</span>

<p               <p class="caption">Crispy, buttermilk-marinated fried chicken coated in a spicy paste or oil, heavily seasoned with cayenne pepper and covered with colesaw for cool refreshment. Biting into it makes you feel like entered a firewall. </p></li>
            </ul>

        <h1>Special Drinks</h1>
        <ul>
            <li>Megabyte Milkshake<span class="price"> $6.99</span>
            <p class="caption">A jumbo size milkshake with a choice of added flavor, such as Chocolate, Vanilla, Strawberry, Peanut Butter, etc., sprinkled with wide variety of toppings and drizzled with chocolate or caramel</p></li>
            <li>C# Cola<span class="price">$4.99</span>
            <p class="caption">This soda give fizzing sting</p></li>
        </ul>
        <p style="text-align:center; margin-top:40px; color:#888;">Byte Burgers • Est. 2026 • Fort Wayne, IN</p>
        </div>
            </div>
    </form>
</body>
</html>
