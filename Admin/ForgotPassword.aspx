<%@ page language="C#" autoeventwireup="true" inherits="Admin_For, App_Web_wkdu0uos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dream House </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/adminstyle.css" rel="stylesheet" type="text/css" media="all" />
    
    <!-- // Load Javascipt -->
    <!-- Load stylesheets -->
    <link type="text/css" rel="stylesheet" href="../css/adminloginstyle.css" media="screen" />
    <!-- // Load stylesheets -->
    
</head>
<body>
    <form id="Form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="header">
        <div class="header_top">
            <div class="wrap">
                <div class="logo">
                    <a href="#">
                        <img src="../images/logo.png" alt="" /></a>
                </div>
                
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: Silver; height: auto; text-align: right; vertical-align: middle">
        <div style="margin-right: 73px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/guests.png" Height="50px"
                Width="50px" ImageAlign="Middle" />&nbsp;&nbsp;<span>WelCome Admin&nbsp;&nbsp;
            </span>
        </div>
    </div>
    <div class="main">
        <div class="wrap">
            <div class="services_grid" style="margin: 1% 2% 0 0;">
                <!--    Content ..... -->
                <div class="content_bottom" style="background:white ; box-shadow: #606060 0px 5px 30px 2px;">
                    <div class="section group service_desc">
                    <div >
                         <center>
            <table>
                <tr>
                    <td align="center">
                        <h1 style="font-weight: bold; font-size:x-large">
                            Forgot Password</h1>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <p style="font-size:large">
                            Please enter your details here</p>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </center>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server" align="center">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Your Email-Id" style="font-size:large;"></asp:Label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="250px" Height="27"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="Button3" runat="server" Text="Submit" CssClass="submit_button" 
                                    Style="position: relative" onclick="Button3_Click" 
                                    />&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="submit_button" 
                                    Style="position: relative" onclick="Button1_Click"/>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                
            </ContentTemplate>
        </asp:UpdatePanel>
                    </div>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <div class="location">
                        <h3>
                            Location</h3>
                        <ul>
                            <li>
                                <img src="../images/footer_logo.png" alt="" /></li>
                            <li>1-22-003-55,</li>
                            <li>Neque porro quisquam,</li>
                            <li>dolor sit amet,</li>
                            <li>USA.</li>
                        </ul>
                    </div>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h3>
                        Information</h3>
                    <p>
                        Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua. Ut enim ad minim veniam, quis nostrud nisi ut aliquip ex ea commodo
                        consequat.<br>
                        <span><a href="#">Read More[....]</a></span></p>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h3>
                        Testimonials</h3>
                    <div class="Testimonials_desc">
                        <p>
                            <span class="up">
                                <img src="../images/quotes.png" alt=""></span>Lorem ipsum dolor sit amet, consectetur
                            adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                            ex ea commodo consequat.<span class="down"><img src="../images/quotes-down.png" alt=""></span></p>
                        <h5>
                            - Lorem ipsum dolor</h5>
                    </div>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h3>
                        Contact Us</h3>
                    <ul class="address">
                        <li>info(at)yourcompany.com</li>
                        <li><span>Mobile :</span> +12 345 67890</li>
                        <li><span>Telephone :</span> +00 000 00000</li>
                        <li><span>Fax :</span> +00 000 00000</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copy-right">
            <div class="wrap">
                <p>
                    Develope by <a href="#">DreamHouse</a></p>
                <div align='center'>
                    <a>
                        <!-- BEGIN: Powered by Supercounters.com -->
                        <script type="text/javascript" src="http://widget.supercounters.com/hit.js"></script>
                        <script type="text/javascript">
                            sc_hit(766758, 15, 7);
                        </script>
                        <!-- END: Powered by Supercounters.com -->
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
