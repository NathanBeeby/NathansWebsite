<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HorseTherapySite.Account.Register" %>

<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <hd:Header runat="server" ID="HeaderScroller" />

        <div class="sideBar">
    </div>
    <div class="centerBar">
    <div class="row">
        <div class="col-md-12">
            <h2 style="text-align: center; color: white;">Register an account</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <asp:Label runat="server" ID="lblUsername" Text="Username: " style="color:white;font-weight:bold;display:block;text-align:center;"></asp:Label>
            <asp:TextBox runat="server" ID="tbUsername" Style="max-width: 500px;min-width:200px;height:30px;border-radius:25px;text-align:center;display:block;margin-left:auto;margin-right:auto;"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblPassword" Text="Password: " style="color:white;font-weight:bold;display:block;text-align:center;"></asp:Label>
            <asp:TextBox runat="server" ID="tbPassword" TextMode="Password" Style="max-width: 500px;min-width:200px;height:30px;border-radius:25px;text-align:center;display:block;margin-left:auto;margin-right:auto;"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblConfirmPassword" Text="Confirm Password: " style="color:white;font-weight:bold;display:block;text-align:center;"></asp:Label>
            <asp:TextBox runat="server" ID="tbConfirmPassword" TextMode="Password" Style="max-width: 500px;min-width:200px;height:30px;border-radius:25px;text-align:center;display:block;margin-left:auto;margin-right:auto;"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblEmail" Text="Email Address: " style="color:white;font-weight:bold;display:block;text-align:center;"></asp:Label>
            <asp:TextBox runat="server" ID="tbEmail" Style="max-width: 500px;min-width:200px;height:30px;border-radius:25px;text-align:center;display:block;margin-left:auto;margin-right:auto;"></asp:TextBox>
            <asp:Button runat="server" ID="btnRegister" Text="Register" OnClick="btnRegister_Click" style="margin-bottom:20px;margin-left:auto;margin-right:auto;display:block;" CssClass="btnBookingSubmit" />
            <asp:Label runat="server" ID="lblErrorMessage"></asp:Label>
        </div>
        <div class="col-md-4"></div>
    </div>
<%--    <asp:Label runat="server" ID="ErrorMessage"></asp:Label>


    <div class="row">

            <asp:Label runat="server" AssociatedControlID="Email" Style="color: white; text-align: center;" CssClass="col-md-12 control-label">Email</asp:Label>

    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:TextBox runat="server" ID="Email" Style="max-width: 500px;border-radius:25px;text-align:center;margin-left:auto;margin-right:auto;display:block;" CssClass="form-control" TextMode="Email" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                CssClass="text-danger" ErrorMessage="The email field is required." />
        </div>
    </div>


    <div class="row">
            <asp:Label runat="server" AssociatedControlID="Password" Style="color: white; text-align: center;" CssClass="col-md-12 control-label">Password</asp:Label>
    </div>

        <div class="row">
            <div class="col-md-12">
                <asp:TextBox runat="server" ID="Password" Style="max-width: 500px;border-radius:25px;text-align:center;margin-left:auto;margin-right:auto;display:block;" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
    

    <div class="row">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" Style="color: white; text-align:center;" CssClass="col-md-12 control-label">Confirm password</asp:Label>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:TextBox runat="server" ID="ConfirmPassword" Style="max-width: 500px;border-radius:25px;text-align:center;margin-left:auto;margin-right:auto;display:block;" TextMode="Password" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" style="margin-bottom:20px;" CssClass="btnBookingSubmit" />
        </div>
    </div>--%>
        </div>
    <div class="sideBar">

    </div>

</asp:Content>
