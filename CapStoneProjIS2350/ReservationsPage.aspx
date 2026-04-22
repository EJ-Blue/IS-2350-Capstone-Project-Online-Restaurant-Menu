<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationsPage.aspx.cs" Inherits="CapStoneProjIS2350.ReservationsPage" %>

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
    padding: 15px;
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
    font-size: 50px;
    font-weight: bold;
    margin-top: 20px;
    color: #222;
    letter-spacing: 1px;
    margin-bottom: 12px;
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
    
    .entry{
        font-size: 24px;
        margin-top: 25px;
        color: #444;
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
        <div class="menu-container">

        <asp:Label ID="Label2" runat="server" CssClass="entry" Text="Please enter a name for the reservation:"></asp:Label>
        <asp:TextBox ID="Name" runat="server" placeholder="Jane Johnson" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Name" 
            ErrorMessage="A name is required to complete the reservation" 
            ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
        <br  />

        <asp:Label ID="Label3" runat="server" CssClass="entry" Text="How many guests are in your party?:"></asp:Label>
        <asp:TextBox ID="guests" runat="server" placeholder="#" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="guests" 
            ErrorMessage="A confirmed number of guests is required to complete the reservation" 
            ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
        <br  />


        <asp:Label ID="Label5" runat="server" CssClass="entry" Text="Phone Number:"></asp:Label>
        <asp:TextBox ID="Phone" runat="server" placeholder="111-222-3344 " />
        <asp:RegularExpressionValidator ID="PhoneV" runat="server"
            ControlToValidate="Phone"
            ValidationExpression="^\d{3}-\d{3}-\d{4}$"
            Operator="Equal"
            ErrorMessage="Phone Number needs to be in correct format! "
            ForeColor="Red"
            Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="Phone" 
            ErrorMessage="A phone number is required to complete the reservation" 
            ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
        <br  />

        <asp:Label ID="Label6" runat="server" CssClass="entry" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" placeholder="example@email.com " />
            <asp:RegularExpressionValidator ID="EmailCheck" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                ErrorMessage="Please enter email in the correct format"
                ForeColor="Red"
                Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtEmail" 
            ErrorMessage="An email is required to complete the reservation" 
            ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
        <br  />


            <asp:Label ID="Label9" runat="server" CssClass="entry" Text="Submit reservation here:"></asp:Label>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/>
            <p style="text-align:center; margin-top:40px; color:#888;">Byte Burgers • Est. 2026 • Fort Wayne, IN</p>
        </div>
        </div>
    </form>
</body>
</html>
