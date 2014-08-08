<%@ page title="" language="C#" masterpagefile="~/Buyer/MasterPage.master" autoeventwireup="true" inherits="Buyer_Default, App_Web_3fn2k110" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/searchproperty.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,400italic,700italic">
    <style type="text/css">
        a
        {
            color: #a73e3e;
        }
        .hover-details
        {
            height: 100px;
            width: 293px;
            transition: all 1s;
            -moz-transition: all 1s;
            -webkit-transition: all 1s;
            -o-transition: all 1s;
        }
        
        .hover-details:hover
        {
            transform: scale(1.2);
            -ms-transform: scale(1.2);
            -webkit-transform: scale(1.2);
            -o-transform: scale(1.2);
            -moz-transform: scale(1.2);
        }
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <div style="width: 100%; text-align: center; background-color: #ee5010; color: White;
        font-size: 1.2em; text-transform: uppercase; font-family: 'ambleregular'; padding: 8px 0;">
        <p>
            Search Properties</p>
    </div>
    <cc1:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle" Width="100%"
        ActiveTabIndex="0">
        <cc1:TabPanel runat="server" HeaderText="Residential" ID="TabPanel1" TabIndex="0">
            <ContentTemplate>
                <div style="width: 100%; margin: 10px 10px 10px 10px;">
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Select Requirement " Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList7" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                    <asp:ListItem>Buy</asp:ListItem>
                                    <asp:ListItem>Rent</asp:ListItem>
                                    <asp:ListItem>PG</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Select Location " Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="220px" Height="29px" Style="margin-left: 15px"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="220px" Height="29px" Style="margin-left: 15px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="220px" Height="25px" Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" Width="220px" Height="25px" Style="float: left;
                                    margin-left: 15px">
                                    <asp:ListItem>1 BHK</asp:ListItem>
                                    <asp:ListItem>2 BHK</asp:ListItem>
                                    <asp:ListItem>3 BHK</asp:ListItem>
                                    <asp:ListItem>4 BHK</asp:ListItem>
                                    <asp:ListItem>5 BHK</asp:ListItem>
                                    <asp:ListItem>>5 BHK</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="80px" Height="25px" Style="margin-left: 15px" />&nbsp;&nbsp;
                                to
                                <asp:TextBox ID="TextBox2" runat="server" Width="80px" Height="25px" Style="margin-left: 15px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Min Price" SetFocusOnError="true"
                                    ValidationGroup="Res" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter only Numeric Value"
                                    ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Double" SetFocusOnError="true"
                                    ValidationGroup="Res" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Max Price" SetFocusOnError="true"
                                    ValidationGroup="Res" />
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter only Numeric Value"
                                    ControlToValidate="TextBox2" Operator="DataTypeCheck" Type="Double" SetFocusOnError="true"
                                    ValidationGroup="Res" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="Button1" runat="server" Text="SEARCH" CssClass="submit_button" Style="position: relative;"
                                    ValidationGroup="Res" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="margin-top: 10px;">
                    <div id="Div3" style="margin-top: 0%;">
                        <h2 class="highlight">
                            <span>Our Recommendations For You</span></h2>
                        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Width="100%"
                            RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" DataKeyField="adv_id">
                            <ItemTemplate>
                                <ul class="listing">
                                    <li class="one_third" style="width: 310px;"><a href="#">
                                        <div style="width: 293px; height: 100px; overflow: hidden; position: relative;">
                                            <asp:Image ID="Image3" runat="server" ImageUrl='<%#bind("image1") %>' Height="100"
                                                Width="293" CssClass="hover-details" /></div>
                                        <h3>
                                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("cityname")+","+Eval("statename")+"-"+Eval("pincode") %>' /></h3>
                                        <span class="price">Rs.<asp:Label ID="Label8" runat="server" Text='<%#bind("p_range") %>' /></span><ul
                                            class="listing-info">
                                            <li class="listing-info-beds">
                                                <asp:Label ID="Label17" runat="server" Text='<%#bind("bhk") %>' /></li><li class="listing-info-baths">
                                                    <asp:Label ID="Label18" runat="server" Text='<%#bind("bathroom") %>' />Baths
                                            </li>
                                            <li class="listing-info-area">
                                                <asp:Label ID="Label19" runat="server" Text='<%#bind("covered_area") %>' /></li></ul>
                                        <asp:LinkButton ID="LinkButton3" runat="server" Style="float: left; color: Black;"
                                            CommandName="book" CommandArgument='<%#bind("property_id") %>'>Book</asp:LinkButton><asp:LinkButton
                                                ID="LinkButton4" runat="server" Style="float: right; color: Black;" CommandName="moreinfo">More Info</asp:LinkButton></a></li></ul>
                            </ItemTemplate>
                        </asp:DataList><div align="center">
                            <asp:Button ID="btnfirst1" runat="server" Text="<<" OnClick="btnfirst1_Click" Visible="false" /><asp:Button
                                ID="btnprev1" runat="server" Text="<" OnClick="btnprev1_Click" Visible="false" /><asp:Button
                                    ID="btnnext1" runat="server" Text=">" OnClick="btnnext1_Click" Visible="false" /><asp:Button
                                        ID="btnlast1" runat="server" Text=">>" OnClick="btnlast1_Click" Visible="false" /></div>
                    </div>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel runat="server" HeaderText="Commertial" ID="TabPanel2" TabIndex="2">
            <ContentTemplate>
                <div style="width: 100%; margin: 10px 10px 10px 10px;">
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Select Requirement " Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList8" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                    <asp:ListItem>Buy</asp:ListItem>
                                    <asp:ListItem>Rent</asp:ListItem>
                                    <asp:ListItem>PG</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Select Location " Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList9" runat="server" Width="220px" Height="29px" Style="margin-left: 15px"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList10" runat="server" Width="220px" Height="29px"
                                    Style="margin-left: 15px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList11" runat="server" Width="220px" Height="25px"
                                    Style="float: left;">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Width="80px" Height="25px" Style="margin-left: 15px" />&nbsp;&nbsp;
                                to
                                <asp:TextBox ID="TextBox6" runat="server" Width="80px" Height="25px" Style="margin-left: 15px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Min Price" SetFocusOnError="True"
                                    ValidationGroup="com" />
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Enter only Numeric Value"
                                    ControlToValidate="TextBox5" Operator="DataTypeCheck" Type="Double" SetFocusOnError="True"
                                    ValidationGroup="com" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Max Price" SetFocusOnError="True"
                                    ValidationGroup="com" />
                                <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Enter only Numeric Value"
                                    ControlToValidate="TextBox6" Operator="DataTypeCheck" Type="Double" SetFocusOnError="True"
                                    ValidationGroup="com" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="Button2" runat="server" Text="SEARCH" CssClass="submit_button" ValidationGroup="com"
                                    Style="position: relative;" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="margin-top: 10px;">
                    <div id="Div1" style="margin-top: 0%;">
                        <h2 class="highlight">
                            <span>Our Recommendations For You</span></h2>
                        <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" Width="100%"
                            RepeatColumns="3" OnItemCommand="DataList2_ItemCommand" DataKeyField="adv_id">
                            <ItemTemplate>
                                <ul class="listing">
                                    <li class="one_third" style="width: 310px;"><a href="#">
                                        <div style="width: 293px; height: 100px; overflow: hidden; position: relative;">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#bind("image1") %>' Height="100"
                                                Width="293" CssClass="hover-details" /></div>
                                        <h3>
                                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("cityname")+","+Eval("statename")+"-"+Eval("pincode") %>' /></h3>
                                        <span class="price">Rs.<asp:Label ID="Label8" runat="server" Text='<%#bind("p_range") %>' /></span><ul
                                            class="listing-info">
                                            <li class="listing-info-beds">
                                                <asp:Label ID="Label13" runat="server" Text='<%#bind("bhk") %>' /></li><li class="listing-info-baths">
                                                    <asp:Label ID="Label14" runat="server" Text='<%#bind("bathroom") %>' />Baths
                                            </li>
                                            <li class="listing-info-area">
                                                <asp:Label ID="Label15" runat="server" Text='<%#bind("covered_area") %>' /></li></ul>
                                        <asp:LinkButton ID="LinkButton2" runat="server" Style="float: left; color: Black;"
                                            CommandName="book" CommandArgument='<%#bind("property_id") %>'>Book</asp:LinkButton><asp:LinkButton
                                                ID="LinkButton5" runat="server" Style="float: right; color: Black;" CommandName="moreinfo">More Info</asp:LinkButton></a></li></ul>
                            </ItemTemplate>
                        </asp:DataList><div align="center">
                            <asp:Button ID="btnfirst2" runat="server" Text="<<" Visible="False" /><asp:Button
                                ID="btnprev2" runat="server" Visible="False" Text="<" OnClick="btnprev2_Click" />
                            <asp:Button ID="btnnext2" runat="server" Text=">" Visible="False" OnClick="btnnext2_Click" />
                            <asp:Button ID="btnlast2" runat="server" Text=">>" Visible="False" OnClick="btnlast2_Click" /></div>
                    </div>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel runat="server" HeaderText="Luxurious" ID="TabPanel3" TabIndex="3">
            <HeaderTemplate>
                Luxurious
            </HeaderTemplate>
            <ContentTemplate>
                <div style="width: 100%; margin: 10px 10px 10px 10px;">
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Select Requirement " Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList12" runat="server" Width="220px" Height="25px"
                                    Style="margin-left: 15px">
                                    <asp:ListItem>Buy</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Select Location " Style="float: left;" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList15" runat="server" Width="220px" Height="29px"
                                    Style="margin-left: 15px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList15_SelectedIndexChanged" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList16" runat="server" Width="220px" Height="29px"
                                    Style="margin-left: 15px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList17" runat="server" Width="220px" Height="25px"
                                    Style="float: left;">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList18" runat="server" Width="220px" Height="25px"
                                    Style="float: left; margin-left: 15px">
                                    <asp:ListItem>1 BHK</asp:ListItem>
                                    <asp:ListItem>2 BHK</asp:ListItem>
                                    <asp:ListItem>3 BHK</asp:ListItem>
                                    <asp:ListItem>4 BHK</asp:ListItem>
                                    <asp:ListItem>5 BHK</asp:ListItem>
                                    <asp:ListItem>>5 BHK</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="80px" Height="25px" Style="margin-left: 15px" />&nbsp;&nbsp;
                                to
                                <asp:TextBox ID="TextBox4" runat="server" Width="80px" Height="25px" Style="margin-left: 15px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Min Price" SetFocusOnError="True" ValidationGroup="Lux"/>
                                <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Enter only Numeric Value"
                                    ControlToValidate="TextBox3" Operator="DataTypeCheck" Type="Double" SetFocusOnError="True" ValidationGroup="Lux"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Max Price" SetFocusOnError="True" ValidationGroup="Lux"/>
                                <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Enter only Numeric Value"
                                    ControlToValidate="TextBox4" Operator="DataTypeCheck" Type="Double" SetFocusOnError="True" ValidationGroup="Lux"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="Button3" runat="server" Text="SEARCH" CssClass="submit_button" Style="position: relative;" ValidationGroup="Lux"
                                    OnClick="Button3_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="margin-top: 10px;">
                    <div id="Div2" style="margin-top: 0%;">
                        <h2 class="highlight">
                            <span>Our Recommendations For You</span></h2>
                        <asp:DataList ID="DataList3" Width="100%" runat="server" RepeatDirection="Horizontal"
                            RepeatColumns="3" OnItemCommand="DataList3_ItemCommand" DataKeyField="adv_id">
                            <ItemTemplate>
                                <ul class="listing">
                                    <li class="one_third" style="width: 310px;"><a href="#">
                                        <div style="width: 293px; height: 100px; overflow: hidden; position: relative;">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#bind("image1") %>' CssClass="hover-details" /></div>
                                        <h3>
                                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("cityname")+","+Eval("statename")+"-"+Eval("pincode") %>' /></h3>
                                        <span class="price">Rs.<asp:Label ID="Label8" runat="server" Text='<%#bind("p_range") %>' /></span><ul
                                            class="listing-info">
                                            <li class="listing-info-beds">
                                                <asp:Label ID="Label9" runat="server" Text='<%#bind("bhk") %>' /></li><li class="listing-info-baths">
                                                    <asp:Label ID="Label10" runat="server" Text='<%#bind("bathroom") %>' />Baths
                                            </li>
                                            <li class="listing-info-area">
                                                <asp:Label ID="Label11" runat="server" Text='<%#bind("covered_area") %>' /></li></ul>
                                        <asp:LinkButton ID="LinkButton1" runat="server" Style="float: left; color: Black;"
                                            CommandName="book" CommandArgument='<%#bind("property_id") %>'>Book</asp:LinkButton><asp:LinkButton
                                                ID="LinkButton6" runat="server" Style="float: right; color: Black;" CommandName="moreinfo">More Info</asp:LinkButton></a></li></ul>
                            </ItemTemplate>
                        </asp:DataList><div align="center">
                            <asp:Button ID="btnfirst" runat="server" Text="<<" OnClick="btnfirst2_Click" Visible="False" /><asp:Button
                                ID="btnprev" runat="server" Text="<" OnClick="btnprev_Click" Visible="False" /><asp:Button
                                    ID="btnnext" runat="server" Text=">" OnClick="btnnext_Click" Visible="False" /><asp:Button
                                        ID="btnlast" runat="server" Text=">>" OnClick="btnlast_Click" Visible="False" /></div>
                    </div>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
    </cc1:TabContainer>
</asp:Content>
