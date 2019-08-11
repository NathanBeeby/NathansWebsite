<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="HorseTherapySite.Controllers.Footer" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../Styles/CSS/CircleIcons.css" />
<div class="row footerColor">
    <div class="col-md-4">
        <p style="text-align:center;color:white;margin-top:10px;"><b>Phone Number: <a style="color:white;" href="tel:07984857722"><%= Constant.CompanyDetails.CompanyPhoneNumber %></a></b></p>
        <p style="text-align:center;color:white;"><b>Address: <%= Constant.CompanyDetails.CompanyAddress %></b></p>
        <p style="text-align:center;color:white;margin-bottom:10px;"><b>Email Address: <a style="color:white;" href="mailto:Nathan.Beeby@hotmail.co.uk"><%= Constant.CompanyDetails.CompanyEmail %></a></b></p>
    </div>
    <div class="col-md-4">
        <div class="SocialLinks" style="vertical-align:middle">
        <a href="https://www.facebook.com/nathan.beeby.73" class="fa fa-facebook" style="margin-top:20px;"></a>

        <a href="#" class="fa fa-twitter" style="margin-top:20px;"></a>

        <a href="https://www.linkedin.com/in/nathan-beeby/" class="fa fa-linkedin" style="margin-top:20px;"></a>
            </div>
    </div>
    <div class="col-md-4">
        <p style="color:white; margin-top:30px;text-align:center;"><b>NBGames &copy; <%: DateTime.Now.Year %></b></p>
    </div>
</div>
<div class="row footerColor">
    <div class="col-md-12">
        <p style="text-align:center;">
        <a runat="server" ID="lbPrivacyPolicy" style="color:white;text-align:center;padding-left:30px;padding-right:30px;" href="~/PrivacyPolicy.aspx">Privacy Policy</a>
        <a runat="server" ID="lbTermsAndConditions" style="color:white;text-align:center;padding-left:30px;padding-right:30px;" href="~/TermsAndConditions.aspx">Terms and Conditions</a>
        <a runat="server" ID="lbPCookiePolicy" style="color:white;text-align:center;padding-left:30px;padding-right:30px;" href="~/CookiePolicy.aspx">Cookie Policy</a>
            </p>
    </div>
</div>
