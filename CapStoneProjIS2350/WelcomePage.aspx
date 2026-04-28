<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="CapStoneProjIS2350.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Byte Burgers Home</title>
    <style>
    body {
        font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        background: #d2eae6;
        margin: 0;
        padding: 0;
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
    font-size:25px;
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
    margin-bottom: 12px;
    margin-top: 20px;
    color: #222;
    letter-spacing: 1px;
}

    .title-sub {
        display: block;
        text-align: center;
        font-size: 30px;
        margin-bottom: 25px;
        color: #555;
        font-style: italic;
    }
    .heads {
    display: block;
    text-align: center;
    font-size: 30px;
    margin-bottom: 25px;
    color: #000000;
    }
     .p {
       font-size: 16px;
       color: #000000;
       margin-top: 12px;
       margin-bottom: 12px;
       padding-left: 5px;
       text-align: center;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="greeting" runat="server" CssClass="title-main" Text="Welcome to Byte Burgers!"></asp:Label> <br />
            <asp:Label ID="mainheading" runat="server" class="title-sub" Text="Want a byte?"></asp:Label> <br />
             
             <div class="nav-container">
                <a href="AboutPage.aspx" class="nav-link">About Us</a>
                <a href="MenuPage.aspx" class="nav-link">Menu</a>
                <a href="SpecialsPage.aspx" class="nav-link">Specials</a>
                <a href="ReservationsPage.aspx" class="nav-link">Reservations</a>
            </div>

            <asp:Label ID="hours" runat="server" class="heads" Text="Hours"></asp:Label> <br />
                <p class="p">Monday-Friday: 11 AM-10PM</p><br />
                <p class="p">Saturday & Sunday: 12 PM-11PM</p>

            <asp:Label ID="addy" runat="server" class="heads" Text="Our Location"></asp:Label> <br />
            <p class="p">1234 Smith St. Fort Wayne, IN 46803</p><br />

            <asp:Label ID="pnum" runat="server" class="heads" Text="Contact Us"></asp:Label> <br />
            <p class="p">Phone Number:123-456-7890</p> <br />

            <asp:Label ID="contact" runat="server" class="heads" Text="Questions, Commments Concerns? Email Us!"></asp:Label> <br />
           <p class="p"> <a href="mailto:byteburgers@gmail.com" >Restaurant's Email </a> </p> <br />
            <p class="p"> <a href="mailto:bobcoder@gmail.com" >Head Chef's Email </a> </p>


            <p style="text-align:center; margin-top:40px; color:#888;">Byte Burgers • Est. 2026 • Fort Wayne, IN</p>
        </div>
    </form>
</body>
</html>
