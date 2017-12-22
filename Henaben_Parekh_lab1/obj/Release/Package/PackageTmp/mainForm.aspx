<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainForm.aspx.cs" Inherits="Henaben_Parekh_lab1.mainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css" />
    <title></title>
    <style>
        .bg {
            background-image: url("http://bsnscb.com/data/out/164/39869345-rice-wallpapers.jpg");
        }
    </style>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

</head>
<body class="bg">
    <nav>
        <div class="nav-wrapper blue-grey darken-2">
            <a href="#" class="brand-logo">Amercian Restaurant</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="#order">Order</a></li>
                <li><a href="https://storage.googleapis.com/restaurant23/Menu.pdf" target="_blank">Menu</a></li>
                <li><a href="#gallery">Gallery</a></li>
            </ul>
        </div>
    </nav>
    <div class="slider">
        <ul class="slides">
            <li>
                <img src="https://lorempixel.com/580/250/nature/1">
                <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="https://lorempixel.com/580/250/nature/2">
                <!-- random image -->
                <div class="caption left-align">
                    <h3>Left Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="https://lorempixel.com/580/250/nature/3">
                <!-- random image -->
                <div class="caption right-align">
                    <h3>Right Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <img src="https://lorempixel.com/580/250/nature/4">
                <!-- random image -->
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div class="container">

            <div class="container">

                <div class="row" id="order">
                    <h2>Order Now</h2>
                    <br />
                    <div class="col m6">
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div class="col m6">
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                    <div class="col m12 center-align">
                        <asp:Button ID="Button2" runat="server" Text="Remember Me!!" OnClick="onClickRemember" CssClass="waves-effect waves-light btn" /><asp:Label ID="Label11" runat="server"></asp:Label>
                        <br />
                    </div>
                    <br />
                    <div class="col m6">
                        <asp:Label ID="Label3" runat="server" Text="City:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                    <div class="col m6">
                        <asp:Label ID="Label4" runat="server" Text="Postal Code:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </div>
                    <div class="col m6">
                        <asp:Label ID="Label5" runat="server" Text="Phone Number:"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </div>
                    <div class="col m6">
                        <asp:Label ID="Label6" Text="Province:" runat="server"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-button btn">
                            <asp:ListItem>Ontario</asp:ListItem>
                            <asp:ListItem>Alberta</asp:ListItem>
                            <asp:ListItem>Manitoba</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col m12">
                        <b>
                            <asp:Label ID="Label7" runat="server" Text="Food And Drinks:"></asp:Label><br />
                        </b>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/burger.jpeg" />
                                <span class="card-title">Burger</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Burger" />
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/pizza.jpeg" />
                                <span class="card-title">Pizza</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Pizza" />
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/bagel.jpg" />
                                <span class="card-title">Bagel</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Bagel" />
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/coffee.jpeg" />
                                <span class="card-title">Coffee</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox4" runat="server" Text="Coffee" />
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/poutine.jpg" />
                                <span class="card-title">Poutine</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox5" runat="server" Text="Poutine" />
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/frie.jpeg" />
                                <span class="card-title">Fries</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox6" runat="server" Text="Fries" />
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="card">
                            <div class="card-image">
                                <img src="imgs/drinks.jpg" />
                                <span class="card-title">Drinks</span>
                            </div>

                            <div class="card-action">
                                <asp:CheckBox ID="CheckBox7" runat="server" Text="Drinks" />
                            </div>
                        </div>
                    </div>
                    <div class="col m12">
                        <b>
                            <asp:Label ID="Label8" runat="server" Text="Pickup Or Delivery:"></asp:Label></b>
                    </div>
                    <div class="col m6">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Pickup</asp:ListItem>
                            <asp:ListItem>Delivery</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col m6">
                        <asp:Label ID="Label9" runat="server" Text="Comments:"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="300px"></asp:TextBox>
                    </div>
                    <div class="col m12 center">
                        <asp:Button CssClass="waves-effect waves-light btn" ID="Button1" runat="server" Text="Order" OnClick="onSubmit" />
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </div>

                    <br />
                    <hr />
                    <br />
                </div>
            </div>


        </div>
        <div class="center" id="gallery">
            <h2>Gallery</h2>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="waves-effect waves-light btn" /><br />
                <asp:Button ID="upload" Text="Upload" runat="server" OnClick="Button2_Click" CssClass="waves-effect waves-light btn" />
        </div>
       
    </form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.slider').slider();
            $('.scrollspy').scrollSpy();
        });
    </script>
</body>
</html>
