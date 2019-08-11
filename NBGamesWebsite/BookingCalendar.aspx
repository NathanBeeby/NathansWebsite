<%@ Page Title="Booking Calendar" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="BookingCalendar.aspx.cs" Inherits="HorseTherapySite.BookingCalendar" MaintainScrollPositionOnPostback="true" %>
 
<%@ Register TagPrefix="hd" TagName="Header" Src="~/Controllers/Header.ascx" %>
<%@ Register TagPrefix="sb" TagName="SideBar" Src="~/Controllers/SideBar.ascx" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<%--    <link rel="stylesheet" href="../Scripts/Jquery-ui/jquery-ui.css"/>--%>
        <asp:Panel ID="pnlConsent" CssClass="ConsentPanel" runat="server" Visible="true">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 ConsentSquircle">
                <div style="width:80%;margin-left:auto;margin-right:auto;margin-bottom:50px;">
                <h2 style="text-align:center;color:white;"><u>Consent Form</u></h2>
                <br />
                <div class="row">
                    <div class="col-md-6"><p style="font-weight:bold;text-align:left;color:white;font-size:20px;">Dear Parent / Guardian</p></div>
                    <div class="col-md-6"><p style="font-weight:bold;text-align:right;color:white;font-size:20px;">Date: <asp:Label runat="server" ID="DateLabel"></asp:Label></p></div>
                </div>
                <br />
                <p style="font-weight:bold;color:white;font-size:20px;">We wish to inform you that your child has been reffered to our facility to begin Equine Therapy sessions with us, and we would like your formal permission to start the therapy sessions. Plase see attached informed consent</p>
                <br />
                <p style="font-weight:bold;color:white;font-size:20px;">The following pages explain more about Equine Therapy and requires your signature.</p>
                <br />
                <p style="font-weight:bold;color:white;font-size:20px;">Please do not hesitate to contact me if you have any futher questions or would like to discuss anything at any time before, during or after sessions.</p>
                <br />
                <p style="font-weight:bold;color:white;font-size:20px;">I do give permission for my child to attend weekily Eqiome Therapy sessions held at the facilities of HORSE TIME Equine Therapy in Ringstead</p>
                <br />
                <asp:Label ID="SignatureErrorLabel" runat="server" style="color:red; text-align:center;"/>
                    <br />
                    <table style="width:100%">
                        <tbody>
                            <tr>
                                <td>
                                    <p style="font-weight:bold;font-size:20px;color:white;">Date: <asp:TextBox runat="server" ID="tbdate"></asp:TextBox></p>
                                    <asp:RangeValidator runat="server" ID="rfvDate"  Type="Date"  ControlToValidate="tbdate" MaximumValue="01/01/2100"  MinimumValue="01/01/1900"  ErrorMessage="enter valid date"/>
                                </td>
                                <td>
                                    <p style="font-weight:bold;font-size:20px;color:white;">Signed: <abbr title="(Parent / Guardian)"></abbr><asp:TextBox runat="server" ID="tbSignature"></asp:TextBox></p>
                                    <asp:RequiredFieldValidator ID="rfvSigned" runat="server" ControlToValidate="tbSignature" ErrorMessage="Signature is required." ToolTip="Signature is required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     <p style="font-weight:bold;font-size:20px;color:white;">First Name: <asp:TextBox runat="server" ID="tbFirstName"></asp:TextBox></p>
                                     <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="tbFirstName" ErrorMessage="First name is required." ToolTip="First name is required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>

                                </td>
                                <td>
                                    <p style="font-weight:bold;font-size:20px;color:white;">Last Name: <asp:TextBox runat="server" ID="tbLastName"></asp:TextBox></p>
                                     <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="tbLastName" ErrorMessage="Last name is required." ToolTip="Last name required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="font-weight:bold;;font-size:20px;color:white;">Email: <asp:TextBox runat="server" ID="tbEmail"></asp:TextBox></p>
                                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email Address is required." ToolTip="Email Address is required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="tbEmail" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                                <td>

                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <asp:Button runat="server" ID="btnSend" CssClass="btnBookingSubmit" OnClick="btnSend_Click" Text="Send" />
                    </div>
            </div>
            <div class="col-md-2"></div>
        </div>

    </asp:Panel>

  <div class="row">
        <div class="col-md-12">
<hd:Header runat="server" ID="HeaderScroller" />

        </div>
    </div>


    <div class="row">
            <div style="background-color:white; margin:40px; border-radius:25px;height:auto;width:90%;margin-left:auto;margin-right:auto;">
                <h1 style="text-align:center;margin-top:10px;text-decoration:underline;">Booking Here</h1>
                <br />

                <div class="row">
                    <div class="col-md-4">
                        <div  style="padding-left:20px; padding-right:20px;">
                        <h3 style="text-align:center"><b><u>Refunds & booking cancellation</u></b></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                        </div>
                    <div class="col-md-4" style="padding-left:20px; padding-right:20px;">
                       <div  style="padding-left:20px; padding-right:20px;">
                         <h3 style="text-align:center"><b><u>Rules and Regulations</u></b></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                       </div>
                    <div class="col-md-4" style="padding-left:20px; padding-right:20px;">
                   <div  style="padding-left:20px; padding-right:20px;">
                             <h3 style="text-align:center"><b><u>Location</u></b></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                   </div> 
                   </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <p style="text-align:right">
                <asp:Label runat="server" ID="lblDate" Text="Booking Date: "/><asp:TextBox type="text" textmode="Date" ID="tbDateCalendar" Format="dd/MM/yyyy" runat="server"/>
                            <asp:RangeValidator runat="server" ID="rfvDateCalendar"  Type="Date"  ControlToValidate="tbDateCalendar" MaximumValue="01/01/2100"  MinimumValue="01/01/1900"  ErrorMessage="enter valid date"/>

                            </p>
                        </div>
                    <div class="col-md-6">
                        <p style="text-align:left">
                <asp:Label runat="server" ID="lblBookingTime" Text="Booking Time: "/>
                            <asp:DropDownList runat="server" ID="ddlBookingTime">
                                <asp:ListItem Value="1" Text="9am - 10am" />
                                <asp:ListItem Value="2" Text="10am - 11am" />
                                <asp:ListItem Value="3" Text="11am - 12pm" />
                                <asp:ListItem Value="4" Text="12pm - 1pm" />
                                <asp:ListItem Value="5" Text="1pm - 2pm" />
                                <asp:ListItem Value="6" Text="2pm - 3pm" />
                                <asp:ListItem Value="7" Text="3pm - 4pm" />
                                <asp:ListItem Value="8" Text="4pm - 5pm" />
                            </asp:DropDownList>
                            </p>
                               </div>
                    </div>
                <div class="row">
                    <div class="col-md-6">
                         <p style="text-align:right">
                <asp:Label runat="server" ID="lblFirstName" Text="First Name: "/><asp:TextBox ID="tbBookingFirstName" runat="server"/>
                               <asp:RequiredFieldValidator ID="rfvBookingFirstName" runat="server" ControlToValidate="tbBookingFirstName" ErrorMessage="First name is required." ToolTip="First name is required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>

                            </p>
                    </div>
                    <div class="col-md-6">
                          <p style="text-align:left">
                <asp:Label runat="server" ID="lblLastName" Text="Last Name: "/><asp:TextBox ID="tbBookingLastName" runat="server"/>
                              <asp:RequiredFieldValidator ID="rfvBookingLastName" runat="server" ControlToValidate="tbBookingLastName" ErrorMessage="Last name is required." ToolTip="Last name is required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>
                            </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                         <p style="text-align:right">
                <asp:Label runat="server" ID="lblEmail" Text="Email: "/><asp:TextBox ID="tbBookingEmail" runat="server"/>
                             <asp:RequiredFieldValidator ID="rfvBookingEmail" runat="server" ControlToValidate="tbBookingEmail" ErrorMessage="Email Address is required." ToolTip="Email Address is required." ValidationGroup="BookingValidation"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revBookingEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="tbBookingEmail" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            </p>
                    </div>
                    <div class="col-md-6">
                         <p style="text-align:left">
                <asp:Label runat="server" ID="lblSessionType" Text="Session Type: "/>
                            <asp:DropDownList runat="server" ID="ddlSessionType">
                                <asp:ListItem Value="1" Text="Introduction Session" />
                                <asp:ListItem Value="2" Text="Individual Therapy" />
                                <asp:ListItem Value="3" Text="Shared Therapy" />
                                <asp:ListItem Value="4" Text="Family Therapy" />
                                <asp:ListItem Value="5" Text="Mindfulness Workshop" />
                                <asp:ListItem Value="6" Text="Anger Management Workshop" />
                                <asp:ListItem Value="7" Text="Confidence Workshop" />
                            </asp:DropDownList>
                            </p>
                    </div>
                </div>
        <asp:Button runat="server" ID="btnBookSlot" OnClick="btnBookingSlot_Click" CssClass="btnBookingSubmit" Text="Confirm Booking"  Style="text-align:center;"/>
                <br />
                <asp:Label runat="server" ID="lblBookingError" style="text-align:center;color:red;display:block;"></asp:Label>
                </div>
    </div>
</asp:Content>
