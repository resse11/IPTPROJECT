<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="MyIPTproj.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container my-5">
    <div class="card shadow-lg border-0 rounded-4">
        <div class="card-body p-5">
            
            <h6 class="display-6 fw-bold text-center mb-4 custom-text">REGISTRATION FORM</h6>

            <h4 class="fw-bold text-secondary">PERSONAL INFORMATION</h4>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="txtLastName" class="form-label fw-bold fs-5">Last Name:</label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="txtFirstName" class="form-label fw-bold fs-5">First Name:</label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="txtEmail" class="form-label fw-bold fs-5">Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control border-primary shadow-sm" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="txtPhone" class="form-label fw-bold fs-5">Phone:</label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="txtDOB" class="form-label fw-bold fs-5">Date of Birth:</label>
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control border-primary shadow-sm" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="ddlGender" class="form-label fw-bold fs-5">Gender:</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select border-primary shadow-sm">
                        <asp:ListItem Text="Choose..." Value="" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

                        <h4 class="fw-bold text-secondary mt-4">SCHOOL INFORMATION</h4>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="ddlCampus" class="form-label fw-bold fs-5">Campus:</label>
                    <asp:DropDownList ID="ddlCampus" runat="server" CssClass="form-select border-primary shadow-sm">
                        <asp:ListItem Text="Choose..." Value="" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="PSU San Carlos" Value="PSU San Carlos"></asp:ListItem>
                        <asp:ListItem Text="PSU Bayambang" Value="PSU Bayambang"></asp:ListItem>
                        <asp:ListItem Text="PSU Lingayen" Value="PSU Lingayen"></asp:ListItem>
                        <asp:ListItem Text="PSU Binmaley" Value="PSU Binmaley"></asp:ListItem>
                        <asp:ListItem Text="PSU Alaminos" Value="PSU Alaminos"></asp:ListItem>
                        <asp:ListItem Text="PSU Asingan" Value="PSU Asingan"></asp:ListItem>
                        <asp:ListItem Text="PSU Infanta" Value="PSU Infanta"></asp:ListItem>
                        <asp:ListItem Text="PSU Urdaneta" Value="PSU Urdaneta"></asp:ListItem>
                        <asp:ListItem Text="PSU Santa Maria" Value="PSU Santa Maria"></asp:ListItem>

                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <label for="ddlCourse" class="form-label fw-bold fs-5">Course:</label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-select border-primary shadow-sm">
                        <asp:ListItem Text="Choose..." Value="" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="BS Information Technology" Value="BSIT"></asp:ListItem>
                        <asp:ListItem Text="BS Civil Engineering" Value="BSCE"></asp:ListItem>
                        <asp:ListItem Text="BS Computer Engineering" Value="BSCpE"></asp:ListItem>
                        <asp:ListItem Text="AB English Language" Value="AB English"></asp:ListItem>
                        <asp:ListItem Text="BS Hospitality Management" Value="BSHM"></asp:ListItem>
                        <asp:ListItem Text="BS Nursing" Value="BSN"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <h4 class="fw-bold text-secondary mt-4">ADDRESS</h4>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="txtHouseNumber" class="form-label fw-bold">House Number:</label>
                    <asp:TextBox ID="txtHouseNumber" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="txtBarangay" class="form-label fw-bold">Barangay:</label>
                    <asp:TextBox ID="txtBarangay" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="txtCity" class="form-label fw-bold">City:</label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="txtProvince" class="form-label fw-bold">Province:</label>
                    <asp:TextBox ID="txtProvince" runat="server" CssClass="form-control border-primary shadow-sm"></asp:TextBox>
                </div>
            </div>



            <!-- Submit Button -->
            <div class="d-flex justify-content-end mt-4">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary text-white fw-bold px-5 py-2 shadow-sm" OnClick="btnSubmit_Click" />
            </div>

            <!-- Success Message -->
            <div class="text-center mt-3">
                <asp:Label ID="lblMessage" runat="server" CssClass="fw-bold"></asp:Label>
            </div>

            <!-- Address Section -->
            <h4 class="fw-bold mt-4">ADDRESS <span class="text-primary">SCHOOL:</span></h4>
            <p><strong>A:</strong> 123 Lingayen, Pangasinan</p>
            <p><strong>P:</strong> 09991928716; <strong>E:</strong> pangasinanstateuniversity@gmail.com</p>

            <!-- Thank You Note -->
            <div class="text-center mt-4">
                <h5 class="fw-bold">THANK YOU <span class="text-primary">FOR REGISTRATION</span></h5>
                <p>Write your instructions here. You can add details or examples to help your reader along!</p>
            </div>

        </div>
    </div>
</div>

</asp:Content>
