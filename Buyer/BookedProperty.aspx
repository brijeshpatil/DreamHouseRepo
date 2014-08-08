<%@ page title="" language="C#" masterpagefile="~/Buyer/MasterPage.master" autoeventwireup="true" inherits="Buyer_Default, App_Web_akp441d5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">        window.jQuery || document.write('<script src="../HTML-Files/js/libs/jquery-1.7.1.min.js"><\/script>')</script>
    <script src="../HTML-Files/js/plugins.js" type="text/javascript"></script>
    <script src="../HTML-Files/js/script.js" type="text/javascript"></script>
    <link href="../HTML-Files/style.css" rel="stylesheet" type="text/css" />
    <link href="../HTML-Files/css/responsive.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(window).load(function () {
                $('#carousel').flexslider({
                    animation: "slide",
                    controlNav: false,
                    animationLoop: false,
                    slideshow: false,
                    itemWidth: 145,
                    itemMargin: 15,
                    asNavFor: '#slider'
                });

                $('#slider').flexslider({
                    animation: "fade",
                    controlNav: false,
                    animationLoop: false,
                    slideshow: false,
                    sync: "#carousel",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div style="width: 100%; text-align: center; background-color: #ee5010; color: White;
        font-size: 1.2em; text-transform: uppercase; font-family: 'ambleregular'; padding: 8px 0;">
        <p>
            Your Booked Property Details
        </p>
    </div>
    <div style="width: 100%; margin-top: 20px;" align="center">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="220" Height="25" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    </div>
    <asp:Panel ID="Panel4" runat="server" Visible="true">
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <div class="width-container" style="margin-top: 20px; width: 100%;">
                    <div id="container-sidebar" style="width: 100%;">
                        <div class="content-boxed">
                            <h2 class="title-bg" style="font-weight: bold;">
                                Property <span></span>
                            </h2>
                            <div class="property-listing-single">
                                <div class="notification-listing">
                                    Booked </div>
                                <div id="property-single-slider">
                                    <div id="slider" class="flexslider">
                                        <ul class="slides">
                                            <li>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#bind("image1") %>'
                                                    rel="prettyPhoto[gallery]">
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%#bind("image1") %>' Height="300px"
                                                        Width="100%" />
                                                </asp:HyperLink></li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#bind("image2") %>'
                                                    rel="prettyPhoto[gallery]">
                                                    <asp:Image ID="Image3" runat="server" ImageUrl='<%#bind("image2") %>' Height="300px"
                                                        Width="100%" />
                                                </asp:HyperLink></li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%#bind("image3") %>'
                                                    rel="prettyPhoto[gallery]">
                                                    <asp:Image ID="Image4" runat="server" ImageUrl='<%#bind("image3") %>' Height="300px"
                                                        Width="100%" />
                                                </asp:HyperLink></li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#bind("image4") %>'
                                                    rel="prettyPhoto[gallery]">
                                                    <asp:Image ID="Image5" runat="server" ImageUrl='<%#bind("image4") %>' Height="300px"
                                                        Width="100%" />
                                                </asp:HyperLink></li>
                                        </ul>
                                    </div>
                                    <div id="carousel" class="flexslider">
                                        <ul class="slides">
                                            <li>
                                                <asp:Image ID="Image6" runat="server" ImageUrl='<%#bind("image1") %>' />
                                            </li>
                                            <li>
                                                <asp:Image ID="Image7" runat="server" ImageUrl='<%#bind("image2") %>' />
                                            </li>
                                            <li>
                                                <asp:Image ID="Image8" runat="server" ImageUrl='<%#bind("image3") %>' />
                                            </li>
                                            <li>
                                                <asp:Image ID="Image9" runat="server" ImageUrl='<%#bind("image4") %>' />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                            <%--<p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mi turpis, egestas
                                        nec ultrices a, fermentum sit amet ante. Nulla euismod felis ac eros gravida hendrerit.
                                        Nullam lobortis luctus quam non tristique. Praesent scelerisque commodo tellus,
                                        eu tempor erat hendrerit vitae. Cum sociis natoque penatibus et magnis dis parturient
                                        montes, nascetur ridiculus mus. Aliquam erat volutpat. Suspendisse congue dui non
                                        felis blandit dignissim.</p>--%>
                            <h5 class="additional-features-headline" style="font-weight: bold;">
                                Additional Information</h5>
                            <ul class="additional-features">
                                <li>Property Status: For
                                    <asp:Label ID="Label28" runat="server" Text='<%#bind("req_type") %>' /></li>
                                <li>Property Type:
                                    <asp:Label ID="Label30" runat="server" Text='<%#bind("property_type") %>' /></li>
                                <li>Construction Age:
                                    <asp:Label ID="Label31" runat="server" Text='<%#bind("construction_age") %>' /></li>
                                <li>Furnished:
                                    <asp:Label ID="Label32" runat="server" Text='<%#bind("furnish") %>' /></li>
                                <li>Facing:
                                    <asp:Label ID="Label33" runat="server" Text='<%#bind("facing") %>' /></li>
                                <li>No.of Bathrooms:
                                    <asp:Label ID="Label34" runat="server" Text='<%#bind("bathroom") %>' /></li>
                                <li>Extra Features:
                                    <asp:Label ID="Label35" runat="server" Text='<%#bind("features") %>' /></li>
                                <li>BHK:
                                    <asp:Label ID="Label36" runat="server" Text='<%#bind("bhk") %>' /></li>
                                <li>Address:
                                    <asp:Label ID="Label27" runat="server" Text='<%#Eval("paddress")+","+Eval("statename")+","+Eval("countryname")+","+Eval("pincode") %>' /></li>
                                <li>Price: Rs.<asp:Label ID="Label29" runat="server" Text='<%#bind("p_range") %>' /></li>
                                <li style="font-weight:bolder;">Booked on: 
                                    <asp:Label ID="Label1" runat="server" Text='<%#bind("booking_date") %>' ></asp:Label></li>
                            
                            </ul>
                            <div class="clearfix">
                            </div>
                            <div class="share-section-listing">
                                <span class="share-text" style="font-weight: lighter;">Print this:</span> <span class="st_print">
                                    <a href="javascript:window.print()">Print</a></span>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                        <!-- close .content-boxed -->
                        <br>
                        <div class="content-boxed">
                            <h2 class="title-bg" style="font-weight: bold;">
                                Seller Information</h2>
                            <div class="agent-post">
                                <div class="agent-thumb">
                                    <a href="#">
                                        <asp:Image ID="Image10" runat="server" ImageUrl='<%#bind("profile_image") %>' /></a>
                                </div>
                                <div class="agent-details">
                                    <h5 style="font-weight: bold;">
                                        <a href="#">
                                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("firstname")+" "+Eval("lastname") %>'></asp:Label></a></h5>
                                    <ul class="fancy-list">
                                        <li><span>Mobile:</span><asp:Label ID="Label25" runat="server" Text='<%#bind("mobile") %>'></asp:Label></li>
                                        <li><span>Email:</span>
                                            <asp:Label ID="Label26" runat="server" Text='<%#bind("email_id") %>'></asp:Label></li>
                                    </ul>
                                </div>
                                <div class="agent-social">
                                    <div class="social-icons">
                                        <a class="facebook" href="http://facebook.com" target="_blank">F</a> <a class="twitter"
                                            href="https://twitter.com/Progression_S" target="_blank">t</a> <a class="skype" href="http://skype.com"
                                                target="_blank">s</a> <a class="linkedin" href="http://linkedin.com/" target="_blank">
                                                    l</a>
                                    </div>
                                    <!-- close .social-icons -->
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                        <!-- close .content-boxed -->
                    </div>
                    <!-- close #container-sidebar -->
                    <!-- close #sidebar -->
                </div>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
