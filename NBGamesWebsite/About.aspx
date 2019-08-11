<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HorseTherapySite.About" %>

<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>
<%@ Register TagPrefix="sb" TagName="SideBar" Src="~/Controllers/SideBar.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <hd:Header runat="server" ID="HeaderScroller" />
        </div>
    </div>
    <div class="sideBar">
    </div>
    <div class="centerBar">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-3">
                <div class="TempPicture"></div>
            </div>
            <div class="col-md-7" style="padding: 30px;">
                <h2 style="text-align: center; color: white;"><u>About the company</u></h2>
                <p>
                    <p style="text-align: center; color: white; font-weight: bold;"><%= Constant.CompanyDetails.CompanyName %> 
                    </p>
                    <br />
                    <p style="text-align: center; color: white; font-weight: bold;"></p>
                    <br />
                </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-7" style="padding: 30px;">
                <h2 style="text-align: center; color: white;"><u>Who are we?</u></h2>
                <p>
                <p style="text-align: center; color: white; font-weight: bold;"> <%= Constant.CompanyDetails.CompanyName %> &copy;</p>
                <br />
            </div>
            <div class="col-md-3">
                <div class="TempPicture" style="margin-bottom: 70px;"></div>
            </div>
            <div class="col-md-1"></div>
        </div>

            <div class="row" style="background-color:#1a1a1a;border-top:1px solid black;border-bottom: 1px solid black;box-shadow: 2px 2px 8px 5px black">
        <div class="col-md-12" style="padding:30px;">
            <h3 style="text-align: center;color:white;">Some Information Here</h3>
            <p style="color:white;text-align: center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p style="color:white;text-align: center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p style="color:white;text-align: center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
       
    </div>

    </div>
    <div class="sideBar">
    </div>
</asp:Content>
