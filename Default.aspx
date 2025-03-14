<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IPTPROJECT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Google Font for Styling -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">

    <style>
        /* Font Styling */
        .custom-font {
            font-family: 'Playfair Display', serif;
        }

        /* Image Styling */
        .custom-img {
            width: 100%;
            height: 400px;
            max-width: 1200px;
            border-radius: 15px;
            object-fit: cover;
            display: block;
            margin-bottom: 40px;
        }

        /* Title Styling */
        .campus-title {
            font-size: 32px;
            font-weight: bold;
            color: #2c6fbb;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Flexbox Layout */
        .campus-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 40px 0;
        }

        /* Text Section */
        .campus-text {
            width: 50%;
            padding: 30px;
            font-size: 20px;
            text-align: justify;
            color: #2c6fbb;
        }

        .campus-text-right {
            text-align: right;
        }

        /* Image Section */
        .campus-image {
            width: 50%;
            display: flex;
            justify-content: center;
            padding: 20px;
        }

        /* School Information */
        .school-info {
            text-align: center;
            margin-top: 50px;
            font-size: 20px;
        }

        .school-info h4 {
            color: #2c6fbb;
        }
    </style>

    <!-- University Name -->
    <div class="text-center">
        <h1 class="campus-title">PANGASINAN STATE UNIVERSITY</h1>
    </div>

    <!-- Image Gallery with Alternating Layout -->
    <div class="container">
        <asp:Repeater ID="rptCampuses" runat="server">
            <ItemTemplate>
                <div class="campus-container">
                    <%# Container.ItemIndex % 2 == 0 ? "<div class='campus-text'>" + Eval("Description") + "</div>" : "" %>
                    <div class="campus-image">
                        <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("CampusName") %>' class="custom-img">
                    </div>
                    <%# Container.ItemIndex % 2 != 0 ? "<div class='campus-text campus-text-right'>" + Eval("Description") + "</div>" : "" %>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <!-- School Address Section -->
    <div class="text-center school-info">
        <h4 class="fw-bold mt-4">ADDRESS <span class="text-primary">SCHOOL:</span></h4>
        <p><strong>A:</strong> 123 Lingayen, Pangasinan</p>
        <p><strong>P:</strong> 09991928716; <strong>E:</strong> pangasinanstateuniversity@gmail.com</p>
    </div>

</asp:Content>

