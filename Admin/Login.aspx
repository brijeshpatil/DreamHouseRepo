<%@ page language="C#" autoeventwireup="true" inherits="Admin_Default2, App_Web_wkdu0uos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dream House </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/adminstyle.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="../js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../js/adminjquery.js"></script>
    <script type="text/javascript" src="../js/adminjquery.query-2.1.7.js"></script>
    <script type="text/javascript" src="../js/adminrainbows.js"></script>
    <!-- // Load Javascipt -->
    <!-- Load stylesheets -->
    <link type="text/css" rel="stylesheet" href="../css/adminloginstyle.css" media="screen" />
    <!-- // Load stylesheets -->
    <script type="text/javascript">


        $(document).ready(function () {

            $("#submit1").hover(
	function () {
	    $(this).animate({ "opacity": "0" }, "slow");
	},
	function () {
	    $(this).animate({ "opacity": "1" }, "slow");
	});
        });


    </script>
</head>
<body>
    <form id="Form1" runat="server">
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
                <div class="content_bottom" style="background: rgba(190, 187, 187, 0.57); box-shadow: #606060 0px 5px 30px 2px;">
                    <div class="section group service_desc">
                        <center>
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="Red" /></center>
                        <div id="wrapper">
                            <div id="wrappertop">
                            </div>
                            <div id="wrappermiddle">
                                <img src="../images/admin2.png" height="200px" width="200px" style="margin-left: 12%" />
                                <div id="h2">
                                    Login Admin</div>
                                <div>
                                    <div id="inputusername">
                                        <asp:TextBox ID="TextBox1" runat="server" name="link" value="User-Name" onclick="this.value = ''" 
                                        Width="90%" Height="30px" Font-Size="Large"></asp:TextBox>
                                    </div>
                                </div>
                                <div>
                                    <div id="inputpassword">
                                        <asp:TextBox ID="TextBox2" runat="server" name="link" TextMode="Password" value="Password"
                                            onclick="this.value = ''" Width="90%" Height="30px" Font-Size="Large"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="submit">
                                    <asp:ImageButton ID="ImageButton1" runat="server" src="../images/submit_hover.png"
                                        CssClass="submit1" value="Sign In" Style="width: 62%" OnClick="ImageButton1_Click" />
                                    <asp:ImageButton ID="ImageButton2" runat="server" src="../images/submit.png" CssClass="submit2"
                                        value="Sign In" Style="width: 62%" />
                                </div>
                                <div id="links_left">
                                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Forgot your Password?</asp:LinkButton>
                                </div>
                                <%--<div id="links_right">
                        <a href="#">Not a Member Yet?</a></div>--%>
                            </div>
                            <div id="wrapperbottom">
                            </div>
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
