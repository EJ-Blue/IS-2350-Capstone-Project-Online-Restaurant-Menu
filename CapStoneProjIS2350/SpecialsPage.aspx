<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialsPage.aspx.cs" Inherits="CapStoneProjIS2350.SpecialsPage" %>

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
        margin-top:6px;
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
    font-size: 25px;
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
    font-size: 50px;
    font-weight: bold;
    margin-top: 20px;
    color: #222;
    letter-spacing: 1px;
    margin-bottom: 12px;
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
            <h1>Specialty Entrees</h1>
            <ul>
                <li>The Gigabyte Meal<span class="price"> $16.99</span>

                <p class="caption">A 1/2 lb burger with all the fixins in the kitchen. Paired with a 1/2 lb of our signature Cache Fries and a large drink of your choice.</p></li>

                <li>The Python<span class="price"> $13.99</span>

                <p class="caption">This foot long sausage sandwhich comes topped with our house sauce and homemade sauerkraut. No snake is complete with scales- freshly made kitchen potato chips come served alongside this lengthy meal. Additonal side of BBQ Sauce or House Sauce ($0.50) </p></li>

                <li>The HTMLter<span class="price"> $15.99</span>

                <p class="caption">This patty melt contains half a pound of fresh beef and the finest Swiss and Provolone Cheese from the local community. Completed with the Head Chef’s famous grilled onion pepper combo, this burger packs the perfect combo of comfort and savor that Byte Burger is known for. Paired with either fries or chips and your choice of sauce. </p></li>

                <li>While Loop Wings<span class="price"> $11.99</span>

                <p class="caption">An unlimted wing service served boneless or bone-in; Tossed in the sauce of your choice: Buffalo, BBQ, Garlic Parmesan. Served with Cache Fries</p></li>

                <li>Nashville Firewall Sandwich<span class="price"> $14.99</span>

<p               <p class="caption">Crispy, buttermilk-marinated fried chicken heavily seasoned with our Firewall seasoning and served with colesaw on the side for cool refreshment</p></li>
            </ul>

        <h1>Limited Time Beverages</h1>
        <ul>
            <li>Megabyte Milkshake<span class="price"> $6.99</span>
            <p class="caption">A jumbo size milkshake with your choice of flavor: Chocolate, Vanilla, Strawberry, Peanut Butter, or Blueberry, sprinkled with choclate shavings and drizzled in you choice of chocolate or caramel</p></li>

            <li>C# Cola<span class="price">$4.99</span>
            <p class="caption">A crisp, sizzling cherry soda with popping boba pearls to quench your thrist</p></li>

            <li>Java Mocha<span class="price">$4.99</span>
            <p class="caption">Mocha flavored iced-latte topped with choclate shavings and whipped cream</p></li>
        </ul>

        <p style="text-align:center; margin-top:40px; color:#888;">Byte Burgers • Est. 2026 • Fort Wayne, IN</p>
        </div>
            </div>
    </form>
</body>
</html>
