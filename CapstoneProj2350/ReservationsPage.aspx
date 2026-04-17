<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationsPage.aspx.cs" Inherits="CapstoneProj2350.ReservationsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservations with Us</title>

    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
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
            <asp:Label ID="greetingR" CssClass="title-main" Text="Make a reservation with us below!" runat="server" />

            <div class="nav-container">
            <a href="WelcomePage.aspx" class="nav-link">Home</a>
            <a href="AboutPage.aspx" class="nav-link">About Us</a>
            <a href="MenuPage.aspx" class="nav-link">Menu</a>
            <a href="SpecialsPage.aspx" class="nav-link">Specials</a>
            </div>
        </div>
    </form>
</body>
</html>
