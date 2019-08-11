<%@ Page Title="Terms and Conditions" MasterPageFile="~/MasterPages/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="TermsAndConditions.aspx.cs" Inherits="HorseTherapySite.TermsAndConditions" %>

<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <hd:Header runat="server" ID="HeadefrScroller" />
        </div>
    </div>
    <div class="sideBar">
    </div>
    <div class="centerBar">
        <div class="row">
            <div class="col-md-12">
                <h2 style="text-align:center;color:white;"><u>Disclaimer</u></h2>
                <div class="col-md-12">
                   <p style="color:white;">
                Whilst every effort is made to keep the information contained on this website accurate, neither <%= Constant.CompanyDetails.CompanyName %> &copy;, nor any of its employees, contractors or agents are responsible or liable for any claim, loss or damage which might arise from the use of the information on this site. 
            </p>
            <p style="color:white;">
               HTT makes no representation or warranty that use of this website, or materials downloaded from it, will not cause computer virus infection or other damage to property.
            </p>
            <p style="color:white;">
                You are advised to take your own precautions to ensure that you have adequate measures to prevent any such problems.
            </p>
            <p style="color:white;">
                It is always wise to run an anti-virus program on all material downloaded from the Internet.
            </p>
                </div>
                <div class="col-md-12">
                    <h2 style="text-align:center;color:white;"><u>Links to other sites</u></h2>
            <p style="color:white;">Certain links in our site will take you outside our site to an external web address. These links will all open in the same browser window. To open the site in a new window hold the shift key or right click the link and select 'open in new window'.</p>
            <p style="color:white;">We make every effort to ensure that the links provided by this website to other websites are relevant and provide useful information.</p>
            <p style="color:white;">These links are provided for your convenience and the inclusion of any link does not imply endorsement or approval by us of the linked site.  </p>
            <p style="color:white;">We cannot vouch for the accuracy of any of the external sites linked to, or guarantee that these links will work all of the time as we have no control over the availability of the linked sites.</p>
            <p style="color:white;">Each of these linked sites maintains its own independent privacy and data collection policies and procedures. If you visit a website that is linked from our site, you should consult that site's privacy policy before providing any personal information.</p>

                </div>
            </div>
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

