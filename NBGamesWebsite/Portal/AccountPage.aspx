<%@ Page Title="Temp AccountPage" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="HorseTherapySite.Portal.AccountPage" %>

<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>
<%@ Register TagPrefix="sb" TagName="SideBar" Src="~/Controllers/SideBar.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="row">
        <div class="col-md-12">
<hd:Header runat="server" ID="HeaderScroller" />


    <div class="row">
        <div class="col-md-12">
            
<div>
    Welcome
    <asp:LoginName ID="LoginName1" runat="server" Font-Bold = "true" />
    <br />
    <br />
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</div>

   
    </div>
        </div>
    </asp:Content>