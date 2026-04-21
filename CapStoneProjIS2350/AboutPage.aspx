<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="CapStoneProjIS2350.AboutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us: Byte Burgers</title>

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
    .p{
        font-size: 16px;
        color: #000000;
        margin-top: 12px;
        margin-bottom: 12px;
        padding-left: 5px;
        text-align:center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="greetingA" Text="About us:" class="title-main" runat="server" />
             <div class="nav-container">
            <a href="WelcomePage.aspx" class="nav-link">Home</a>
            <a href="MenuPage.aspx" class="nav-link">Menu</a>
            <a href="SpecialsPage.aspx" class="nav-link">Specials</a>
            <a href="ReservationsPage.aspx" class="nav-link">Reservations</a>
            </div>
        </div>

        <p class="p">
            Bob Coder (our head chef) spent his early childhood having a love for all things, technology.  
            He always answered the “what do you want to be when you grow up” question with ambitious dreams like CEO of a gaming company or becoming the head programmer and invaluable asset to a major corporation. 
            In High School, Bob took every technical course under the sun: from robotics to any programming language, he could get his hands on. His fascination for technology only grew; however, his skill set did not. Bob was unable to code the simplest of programs, and his robots never even moved an inch. 
            Bob was devastated to see his childhood dreams slowly die in his own hands. 
        </p> </ br>
          <p class="p"> 
            One day, about halfway through a semester of failed coding languages, Bob’s teacher pulled him aside and told him that he would never amount to anything with his programming prospects, and he would be better off flipping burgers at a restaurant. 
            This comment, meant to be an insult, instead inspired our dear Bob to change the trajectory of his life. He dropped every tech related course in his schedule and added cooking classes instead. Bob learned he was a phenomenal cook and an even better grillmaster. 
            Since that moment, Bob knew his life wasn’t meant to be some snazzy office job techie, but rather the Burger Man of his own shop. He decided to combine his love for tech and burgers to create The Byte Burger; the most tech-poppin', burger bytin’ joint this side of the county line. 
          </p>

        <p style="text-align:center; margin-top:40px; color:#888;">Byte Burgers • Est. 2026 • Fort Wayne, IN</p>
    </form>
</body>
</html>
