<%@ Page Title="Log in" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HorseTherapySite.Account.Login" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <hd:Header runat="server" ID="HeaderScroller" />
    <div class="row">
        <div class="col-md-12">
            <h2 style="text-align: center; color: white;">Log in</h2>
        </div>
    </div>
      <div class="sideBar">
    </div>
    <div class="centerBar">
    <div class="row">
        <div class="col-md-12">
        <asp:Login ID="Login1" runat="server" style="display:block;margin-left:auto;margin-right:auto;width:200px;" OnAuthenticate="ValidateUser">
            <LayoutTemplate>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server"  style="color:white;font-weight:bold;display:block;text-align:center;" AssociatedControlID="UserName">User Name:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" Style="max-width: 500px;min-width:200px;height:30px;border-radius:25px;text-align:center;display:block;margin-left:auto;margin-right:auto;"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="login">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                                <asp:Label ID="lblPassword" runat="server"  style="color:white;font-weight:bold;display:block;text-align:center;" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Style="max-width: 500px;min-width:200px;height:30px;border-radius:25px;text-align:center;display:block;margin-left:auto;margin-right:auto;"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="login">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lbErrorLabel" style="color:red;font-weight:bold;display:block;text-align:center;"></asp:Label>
                          <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="login" style="margin-bottom:20px;margin-left:auto;margin-right:auto;display:block;" CssClass="btnBookingSubmit" />
                    </td>
                </tr>
            </table>   
                </LayoutTemplate>           
        </asp:Login>
        </div>
    </div>
        </div>
    <div class="sideBar">

    </div>
</asp:Content>
