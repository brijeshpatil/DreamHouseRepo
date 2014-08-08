<%@ page title="" language="C#" masterpagefile="~/Seller/MasterPage.master" autoeventwireup="true" inherits="Seller_Default, App_Web_xnpvdb53" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/PricingTable.css" rel="stylesheet" type="text/css" />
    <script src="../js/prefixfree.min.js" type="text/javascript"></script>
    <script type="text/javascript">        window.jQuery || document.write('<script src="../HTML-Files/js/libs/jquery-1.7.1.min.js"><\/script>')</script>
    <script src="../HTML-Files/js/plugins.js" type="text/javascript"></script>
    <script src="../HTML-Files/js/script.js" type="text/javascript"></script>
    <link href="../HTML-Files/style.css" rel="stylesheet" type="text/css" />
    <link href="../HTML-Files/css/responsive.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .MyTabStyle .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight: bold;
            display: block;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .MyTabStyle .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #222;
            padding-left: 10px;
            margin-right: 10px;
            border: solid 1px #d7d7d7;
            background-color: #d7d7d7;
        }
        .MyTabStyle .ajax__tab_header .ajax__tab_inner
        {
            border-color: #666;
            color: #000;
            padding: 7px 15px 10px 0px;
        }
        .MyTabStyle .ajax__tab_hover .ajax__tab_outer
        {
            background-color: #d7d7d7;
            cursor: pointer;
        }
        .MyTabStyle .ajax__tab_hover .ajax__tab_inner
        {
            color: #ee5010;
        }
        .MyTabStyle .ajax__tab_active .ajax__tab_outer
        {
            border-bottom-color: #ffffff;
            background-color: #588CF5;
        }
        .MyTabStyle .ajax__tab_active .ajax__tab_inner
        {
            color: #fff;
            border-color: #333;
        }
        .MyTabStyle .ajax__tab_body
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 11pt;
            background-color: #fff;
            border-top-width: 0;
            border: solid 1px #d7d7d7;
            border-top-color: #ffffff;
        }
    </style>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="width: 100%; text-align: center; background-color: #ee5010; color: White;
        font-size: 1.2em; text-transform: uppercase; font-family: 'ambleregular'; padding: 8px 0;">
        <p>
            Property Advertise</p>
    </div>
    <asp:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle" Width="100%"
        ActiveTabIndex="0">
        <asp:TabPanel runat="server" HeaderText="Create New Advertise" ID="TabPanel1" TabIndex="0">
            <ContentTemplate>
                <div style="width: 100%; height: 25px; background-color: #41474B; color: White;"
                    align="center">
                    Create New Advertise</div>
                <div style="width: 100%; margin: 10px 10px 10px 10px;" align="center">
                    <asp:Panel ID="Panel2" runat="server" Width="100%">
                        <asp:DataList ID="DataList1" runat="server" Width="100%" DataKeyField="planid" RepeatDirection="Horizontal"
                            CellPadding="0" HorizontalAlign="Center" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                <ul class="pricing_table" style="width: 75%;">
                                    <li class="price_block" style="width: 88%;">
                                        <h3>
                                            <asp:Label ID="Label13" runat="server" Text='<%#bind("plan_name") %>'></asp:Label></h3>
                                        <div class="price">
                                            <div class="price_figure">
                                                <span class="price_number">Rs.<asp:Label ID="Label14" runat="server" Text='<%#bind("plan_amount") %>'></asp:Label></span><span
                                                    class="price_tenure">per month</span>
                                            </div>
                                        </div>
                                        <ul class="features">
                                            <li><b>Validity&nbsp;<asp:Label ID="Label15" runat="server" Text='<%#bind("plan_validity") %>' />&nbsp;Days</b></li><li>
                                                Photo, Media, Map</li><li>Video</li><li>Visibility-True</li><li>24*7 Email-support</li></ul>
                                        <div class="footer" style="background-color: #DEF0F4;">
                                            <asp:LinkButton ID="LinkButton1" class="action_button" runat="server" CommandArgument='<%#bind("planid")%>'
                                                CommandName="getplan">Select Plan</asp:LinkButton></div>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </asp:DataList></asp:Panel>
                </div>
                <div style="width: 100%; margin: 10px 10px 10px 10px;" align="center">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Advertise Name" />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="220px" Height="25px" Style="margin-left: 15px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter AdsName" ValidationGroup="ads" Display="Dynamic" ForeColor="Red"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;&#160;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Select Your Property" />
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;&#160;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Selected AdvertisementPlan" />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="220px" ReadOnly="True" Text='<%# bind("plan_name") %>'
                                        Height="25px" Style="margin-left: 15px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;&#160;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Description" />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="205px" Height="25px"
                                        Style="margin-left: 15px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Discription" ValidationGroup="ads" Display="Dynamic" ForeColor="Red"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;&#160;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="StartDate" />
                                </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Label" Width="220px" Height="25px" Style="margin-left: 15px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;&#160;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="EndDate" />
                                </td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Label" Width="220px" Height="25px" Style="margin-left: 15px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;&#160;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Button ID="Button1" runat="server" Text="Create Advertise" ValidationGroup="ads" OnClick="Button1_Click" CssClass="submit_button" style="position:relative;"/>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="Manage Your Advertise" ID="TabPanel2">
            <ContentTemplate>
                <div style="width: 100%; height: 25px; background-color: #41474B; color: White;"
                    align="center">
                    Manage Advertise</div>
                <div style="width: 100%; margin: 10px 10px 10px 10px;" align="center">
                    <asp:DropDownList ID="DropDownList29" runat="server" Width="200px" AutoPostBack="True"
                        OnSelectedIndexChanged="DropDownList29_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList2_ItemCommand">
                            <ItemTemplate>
                                <div class="width-container" style="margin-top: 20px;">
                                    <div id="container-sidebar">
                                        <div class="content-boxed">
                                            <h2 class="title-bg" style="font-weight: bold;">
                                                Property Listings</h2>
                                            <div class="property-listing">
                                                <div class="property-listing-thumb">
                                                    <div class="notification-listing">
                                                        Open House</div>
                                                    <a href="#">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#bind("image1")%>' /></a>
                                                </div>
                                                <div class="property-information">
                                                    <div class="property-information-address">
                                                        <a href="#">
                                                            <asp:Label ID="Label23" runat="server" Text='<%#bind("description")%>' /></a></div>
                                                    <div class="property-information-address">
                                                        <a href="#">PropertyName:&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text='<%#bind("propertyname")%>' /></a></div>
                                                    <div class="property-information-location">
                                                        <a href="#">Address:&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" Text='<%#bind("paddress")%>' />,<asp:Label
                                                            ID="Label11" runat="server" Text='<%# Eval("cityname")+","+Eval("statename")+","+Eval("pincode") %>'></asp:Label></a></div>
                                                    <div class="property-information-price">
                                                        <a href="#">Rs.<asp:Label ID="Label12" runat="server" Text='<%#bind("p_range")%>'></asp:Label></a></div>
                                                    <div class="property-highlight">
                                                        <div class="sq-highlight">
                                                            <asp:Label ID="Label16" runat="server" Text='<%#bind("covered_area")%>'></asp:Label></div>
                                                        <div class="bed-higlight">
                                                            <asp:Label ID="Label17" runat="server" Text='<%#bind("bhk")%>'></asp:Label>
                                                        </div>
                                                        <div class="bath-higlight">
                                                            <asp:Label ID="Label18" runat="server" Text='<%#bind("bathroom")%>'></asp:Label>baths</div>
                                                    </div>
                                                    <div class="property-highlight">
                                                        <div class="garage-higlight">
                                                            IsFurnish?&nbsp;
                                                            <asp:Label ID="Label19" runat="server" Text='<%#bind("furnish")%>'></asp:Label></div>
                                                    </div>
                                                    <div class="property-highlight">
                                                        <div class="time-higlight">
                                                            Listed on&nbsp;<asp:Label ID="Label20" runat="server" Text='<%#bind("startdate")%>'></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="property-highlight">
                                                        <div class="open-house">
                                                            <span>Construction Age</span>:
                                                            <asp:Label ID="Label21" runat="server" Text='<%#bind("construction_age")%>'></asp:Label></div>
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                </div>
                                                <!-- close property-information-->
                                                <div class="clearfix">
                                                </div>
                                                <div class="property-listing-base">
                                                    <div class="grid2column">
                                                        <div class="property-status" style="font-weight: bold;">
                                                            Property Status: <a href="#">For
                                                                <asp:Label ID="Label22" runat="server" Text='<%#bind("req_type") %>'></asp:Label></a></div>
                                                    </div>
                                                    <div class="grid2column lastcolumn" style="float: left;">
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="button secondary-button"
                                                            CommandName="viewlisting">View Listing</asp:LinkButton>
                                                    </div>
                                                    <div class="grid2column lastcolumn" style="float: right; width: 19%;">
                                                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="button secondary-button"
                                                            CommandName="deleteads" CommandArgument='<%#bind("adv_id") %>'>Delete Ads</asp:LinkButton>
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                    <hr>
                                                </div>
                                                <!-- close .property-listing-base -->
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
                    <asp:Panel ID="Panel4" runat="server" Visible="False">
                        <asp:DataList ID="DataList3" runat="server">
                            <ItemTemplate>
                                <div class="width-container" style="margin-top: 20px;">
                                    <div id="container-sidebar">
                                        <div class="content-boxed">
                                            <h2 class="title-bg" style="font-weight: bold;">
                                                Property <span></span>
                                            </h2>
                                            <div class="property-listing-single">
                                                <div class="notification-listing">
                                                    Open House</div>
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
                </div>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</asp:Content>
