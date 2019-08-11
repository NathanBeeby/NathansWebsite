<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HorseTherapySite.Contact" %>


<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>


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

        <div class="col-md-12">

    <div class="row">
        <div class="col-md-6">
            <div class="CirclePhoneIcon" style="margin-top:20px;"></div>
            <h2 style="text-align:center;color:white;">Call Us on <br /><a style="color:white;" href="tel:07984857722">07984857722</a></h2>
        </div>
        <div class="col-md-6">
            <div class="CircleEmailIcon" style="margin-top:20px;"></div>
            <h2 style="text-align:center;color:white;">Email Us at <br /><a style="color:white;" href="mailto:Nathan.Beeby@hotmail.co.uk">Nathan.Beeby@hotmail.co.uk</a></h2>

        </div>
    </div>
       
    <div class="row" style="padding:20px;">
                    <div class="col-md-6" style="padding:20px;">
                        <h2 style="text-align:center;color:white;">Our Location</h2>
                        <p style="text-align:center;color:white;">We are located at 58 Laburnum Crescent.<br /> Kettering, NN16 9PJ.</p>
                        <p style="text-align:center;color:white;">P.O. BOX. 000000</p>
                   <%--     <div id="googleMap" style="width:100%;height:400px;"></div>--%>
                    </div>
                    <div class="col-md-6" style="padding:20px;">
                        <h2 style="text-align:center;color:white;">Opening Hours</h2>
                        <p style="color:white;font-size:16px;text-align:center;">Monday-Friday: 9am - 5pm</p>
                        <p style="color:white;font-size:16px;text-align:center;">Saturday-Sunday: Closed</p>
                    </div>
                </div>
         
        </div>
    </div>
        </div>
    <div class="sideBar"></div>
</asp:Content>