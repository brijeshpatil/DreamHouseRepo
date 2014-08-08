<%@ page title="" language="C#" masterpagefile="~/Seller/MasterPage.master" autoeventwireup="true" inherits="Buyer_Default, App_Web_ajlrthng" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            border-top-width: 0;
            border: solid 1px #d7d7d7;
            border-top-color: #ffffff;
        }
        
        /*manage profile */
        .mngpfl
        {
            background: #f0f0f0;
            font-family: 'Helvetica Neue' , Helvetica, Arial, sans-serif;
            color: #313131; /*font-size: 92.5%;*/
            line-height: 1;
        }
        .h1
        {
            font-family: 'Helvetica Neue' , Helvetica, Arial, sans-serif;
            font-size: 2.5em;
            line-height: 1.5em;
            letter-spacing: -0.05em;
            margin-bottom: 20px;
            padding: .1em 0;
            color: #444;
            position: relative;
            overflow: hidden;
            white-space: nowrap;
            text-align: center;
        }
        .h1:before, .h1:after
        {
            content: "";
            position: relative;
            display: inline-block;
            width: 50%;
            height: 1px;
            vertical-align: middle;
            background: #f0f0f0;
        }
        .h1:before
        {
            left: -.5em;
            margin: 0 0 0 -50%;
        }
        .h1:after
        {
            left: .5em;
            margin: 0 -50% 0 0;
        }
        .h1 > .span
        {
            display: inline-block;
            vertical-align: middle;
            white-space: normal;
        }
        
        .p
        {
            display: block;
            font-size: 1.4em;
            line-height: 1.55em;
            margin-bottom: 22px;
            color: #555;
        }
        /* Manage Profile page  */
        
        
        #userphoto
        {
            display: block;
            float: right;
            margin-left: 15px;
            margin-bottom: 5px;
        }
        #userphoto img
        {
            display: block;
            padding: 2px;
            background: #fff;
            -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.4);
            -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.4);
            box-shadow: 0 1px 3px rgba(0,0,0,0.4);
        }
        
        
        /** profile content sections **/
        .hidden
        {
            display: none;
        }
        
        .activity
        {
            border-bottom: 1px solid #d6d1af;
            padding-bottom: 4px;
        }
        
        .setting
        {
            display: block;
            font-weight: normal;
            padding: 7px 3px;
            border-top: 1px solid #d6d1af;
            margin-bottom: 5px;
        }
        .setting span
        {
            float: left;
            width: 250px;
            font-weight: bold;
        }
    </style>
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
        Manage Profile
    </div>
    <asp:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle" 
        Width="100%" ActiveTabIndex="0">
        <asp:TabPanel runat="server" HeaderText="Your Profile" ID="TabPanel1" TabIndex="0">
            <ContentTemplate>
                <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand"
                    OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">
                    <EditItemTemplate>
                        <div id="w">
                            <div id="content" class="clearfix">
                                <div id="userphoto">
                                    <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl='<%#bind("profile_image") %>' />
                                </div>
                                <h1 class="h1">
                                    User Profile</h1>
                                <section class="section" id="settings">
                    <div style="float: right;">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="160" />
                    </div>
                    <p class="p">
                        Edit your user settings:</p>
                    <p class="setting">
                        <span>UserName</span>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# bind("username") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>FirstName</span>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("firstname") %>' Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>LastName</span>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("lastname") %>' Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>Gender</span><asp:RadioButtonList 
                                        ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </p>
                    <p class="setting">
                        <span>DOB</span>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("dob","{0:dd/MM/yyyy}") %>' Width="200" Height="25"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox3" PopupPosition="Right" Format="dd/MM/yyyy">
                        </asp:CalendarExtender>
                    </p>
                    <p class="setting">
                        <span>Address</span>&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Text='<%# bind("address") %>' Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>Country</span>&nbsp;<asp:DropDownList ID="DropDownList1" Width="205" Height="25"
                                        runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </p>
                    <p class="setting">
                        <span>State</span>&nbsp;<asp:DropDownList ID="DropDownList2" 
                                        runat="server" AutoPostBack="True" Width="205" Height="25"
                                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </p>
                    <p class="setting">
                        <span>City</span>&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Width="205" Height="25">
                        </asp:DropDownList>
                    </p>
                    <p class="setting">
                        <span>Pincode</span>&nbsp;<asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("pincode") %>' Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>Mobile No</span>&nbsp;<asp:TextBox ID="TextBox6" runat="server" Text='<%# bind("mobile") %>' Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>Email Id</span>&nbsp;<asp:TextBox ID="TextBox7" runat="server" Text='<%# bind("email_id") %>' Width="200" Height="25"></asp:TextBox>
                    </p>
                    <div style="width: 100%;" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="submit_button" style="position:relative;" CommandName="update" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" CssClass="submit_button" style="position:relative;" CommandName="cancel">
                        </asp:Button>
                    </div>
                </section>
                            </div>
                        </div>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div id="w">
                            <div id="content" class="clearfix">
                                <div id="userphoto">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%#bind("profile_image") %>' /></div>
                                <h1 class="h1">
                                    User Profile</h1>
                                <section class="section" id="settings">
                    <p class="setting">
                        <span>UserName</span>&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# bind("username") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>FirstName </span>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# bind("firstname") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>LastName </span>&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# bind("lastname") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>Gender</span>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>DOB</span>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# bind("dob","{0:dd/MM/yyyy}") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>Address</span>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("address")+","+Eval("cityname")+","+Eval("statename")+","+Eval("countryname") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>Mobile No</span>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# bind("mobile") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>Email Id</span>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# bind("email_id") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>Status</span>&nbsp;<asp:Label ID="Label9" runat="server" Text='<%# bind("status") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>Registration Date</span>&nbsp;<asp:Label ID="Label10" runat="server" Text='<%# bind("reg_date") %>'></asp:Label>
                    </p>
                    <div style="width: 100%;" align="center">
                        <asp:Button ID="Button4" runat="server" CssClass="submit_button" style="position:relative;" Text="Edit" CommandName="edit">
                        </asp:Button>
                    </div>
                </section>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="Change Password" ID="TabPanel2">
            <ContentTemplate>
                <div style="width: 100%; margin: 10px 10px 10px 10px;">
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Enter Old Password " Style="float: left;" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" Width="220px" Height="25px" Style="margin-left: 15px" TextMode="Password"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Current Password" ValidationGroup="cngpwd" Display="Dynamic" ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Enter New Password" Style="float: left;" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" Width="220px" Height="25px" Style="margin-left: 15px" TextMode="Password"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="cngpwd" ControlToValidate="TextBox9" ErrorMessage="Enter New Password" Display="Dynamic" ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text="Confirm Password" Style="float: left;" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" Width="220px" Height="25px" Style="margin-left: 15px" TextMode="Password" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same Password" ControlToValidate="TextBox10" ValidationGroup="cngpwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter New Password" ValidationGroup="cngpwd" Display="Dynamic" ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="Button2" runat="server" Text="Change Password" ValidationGroup="cngpwd" CssClass="submit_button" style="position:relative;"
                                    onclick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</asp:Content>
