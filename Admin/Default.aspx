<%@ page title="" language="C#" masterpagefile="~/Admin/Admin.master" autoeventwireup="true" inherits="Admin_Default, App_Web_lng2s5qu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .modalBackground
        {
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
        }
        
        .MyTabStyle .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight: bold;
            display: block;
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
        .smallimg
        {
            padding: 6px;
            -webkit-box-shadow: inset 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
            -moz-box-shadow: inset 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
            box-shadow: inset 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
            -webkit-border-radius: 9px;
            -moz-border-radius: 9px;
            border-radius: 9px;
        }
        .cngpwd
        {
            border: 0px solid black;
            padding: 6px;
            -webkit-box-shadow: 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
            -moz-box-shadow: 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
            box-shadow: 0px 2px 10px 5px rgba(79, 79, 79, 0.54);
            border-radius: 9px;
        }
        #fb1
        {
            width: 375px;
            height: 120px;
            border: 1px solid #ccc;
            border-radius: 20px;
            padding: 10px;
            box-shadow: inset 0px 0px 20px 1px black;
            margin-top: 20px;
        }
        .txt
        {
            width: 375px;
            height: 120px;
            border: 1px solid #ccc;
            border-radius: 20px;
            padding: 10px;
            box-shadow: inset 0px 0px 20px 1px black;
            margin-top: 20px;
        }
        .txt1
        {
            width: 80%;
            background-color: #43A4C1;
            color: White;
            margin-bottom: 5%;
            margin-left: 10%;
            height: 56px;
            border: 1px solid #ccc;
            border-radius: 20px;
            padding: 10px;
            box-shadow: inset 0px 0px 20px 1px black;
            margin-top: 20px;
        }
        .lbl
        {
        }
        #uname
        {
            width: 80px;
            height: 15px;
            margin-left: 0px;
        }
        #lk
        {
            width: 90px;
            margin-left: 10px;
            float: left;
        }
        
        .imgcls
        {
            width: 65px;
            padding: 0px;
            height: 75px;
            float: left;
            margin-left: 0px;
            margin-top: 10px;
            border-radius: 30%;
            background-color: transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!-- Menu Content Place Holder -->
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <!--    Content ..... -->
    <%--Manage User.....--%>
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <div class="cngpwd">
        <cc1:TabContainer ID="TabContainer4" runat="server" ActiveTabIndex="0" CssClass="MyTabStyle"
            Width="100%">
            <cc1:TabPanel runat="server" HeaderText="Manage Users" ID="TabPanel6" TabIndex="0">
                <ContentTemplate>
                    <div style="margin: 0px 0px 20px 0px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
                            AllowPaging="True" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand"
                            OnRowDataBound="GridView1_RowDataBound" BorderColor="Black" BorderStyle="Dashed"
                            BorderWidth="0px" PageSize="7" OnPageIndexChanging="GridView1_PageIndexChanging"
                            CssClass="cngpwd">
                            <Columns>
                                <asp:TemplateField HeaderText="Profile Picture">
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="90px" ImageUrl='<%# bind("profile_image") %>'
                                            Width="90px" /></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UserName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("username") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DOB">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("dob") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Address">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("address") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UserType">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# bind("user_role") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="RegistrationDate">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("reg_date") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Is Active">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton7" runat="server" Text='<%# bind("status") %>' CommandArgument='<%# bind("userid") %>'
                                            CommandName="IsActiveF"></asp:LinkButton></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton8" runat="server" CommandName="More" CommandArgument='<%# bind("userid") %>'>MoreInfo...</asp:LinkButton></ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#ee5010" Height="70px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel runat="server" HeaderText="Manage Agents" ID="TabPanel7" TabIndex="1">
                <ContentTemplate>
                    <div style="margin-left: 20px;">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label81" runat="server" Text="Agent Name" />
                                </td>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox45" runat="server" Width="200px" Height="25px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ErrorMessage="*" ForeColor="Red" Display="Dynamic" 
                                        ControlToValidate="TextBox45" ValidationGroup="Agent"></asp:RequiredFieldValidator>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label82" runat="server" Text="Mobile No" />
                                </td>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox46" runat="server" Width="200px" Height="25px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="Agent" Display="Dynamic" ControlToValidate="TextBox46"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Enter Correct Mobile No" ControlToValidate="TextBox46" ValidationGroup="Agent" 
                            Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]\d{9}$"></asp:RegularExpressionValidator>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label83" runat="server" Text="Email Id" />
                                </td>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox47" runat="server" Width="200px" Height="25px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox47" ValidationGroup="Agent" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Write Correct EmailId" ControlToValidate="TextBox47" 
                            Display="Dynamic" ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Agent" ></asp:RegularExpressionValidator>

                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="200px" Height="25px" AutoPostBack="True"
                                        OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="200px" Height="25px" AutoPostBack="True"
                                        OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                    </asp:DropDownList>
                                
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList6" runat="server" Width="200px" Height="25px">
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
                                    <asp:Label ID="Label84" runat="server" Text="Select Profile Image"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                                <td>
                                    
                                    <asp:FileUpload ID="FileUpload2" runat="server" Width="200px" Height="25px" />
                                    
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" align="center">
                                    <asp:Button ID="Button4" runat="server" Text="Register Agent" OnClick="Button4_Click1"
                                        ValidationGroup="Agent" Style="position: relative;"  UseSubmitBehavior="false"
                                        CssClass="submit_button" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <asp:GridView ID="GridView10" runat="server" Width="100%" AllowPaging="True" HorizontalAlign="Center"
                            CssClass="cngpwd" BorderColor="Black" BorderStyle="Dashed" BorderWidth="0px"
                            PageSize="7" AutoGenerateColumns="False" OnPageIndexChanging="GridView10_PageIndexChanging"
                            OnRowDeleting="GridView10_RowDeleting" DataKeyNames="agent_id" Style="margin-top: 10px;">
                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label85" runat="server" Text='<%#bind("agent_id") %>' /></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Agent Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label91" runat="server" Text='<%#bind("a_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="City">
                                    <ItemTemplate>
                                        <asp:Label ID="Label86" runat="server" Text='<%#bind("a_city") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="State">
                                    <ItemTemplate>
                                        <asp:Label ID="Label87" runat="server" Text='<%#bind("a_state") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Country">
                                    <ItemTemplate>
                                        <asp:Label ID="Label88" runat="server" Text='<%#bind("a_country") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mobile No">
                                    <ItemTemplate>
                                        <asp:Label ID="Label89" runat="server" Text='<%#bind("a_mobile") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Label90" runat="server" Text='<%#bind("a_email") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image5" runat="server" Height="100" Width="100" ImageUrl='<%#bind("a_image") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="50px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
    </div>
    <asp:Button ID="btnPopUpGridView1" runat="server" Style="display: none" />
    <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="btnPopUpGridView1"
        PopupControlID="pnlpopup" CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Width="50%" Style="display: none;
        margin: 5px 5px 5px 5px">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" AutoGenerateRows="false">
                <Fields>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table width="100%" style="border: Solid 3px #ee5010;" cellpadding="0" cellspacing="10px">
                                <tr style="background-color: #ee5010">
                                    <td colspan="3" style="height: 10%; color: White; font-weight: bold; font-size: larger"
                                        align="center">
                                        User Details
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="4">
                                        <asp:Image ID="Image1" CssClass="profileimg" runat="server" ImageUrl='<%# bind("profile_image") %>' />
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label6" runat="server" Text="UserName"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("username") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label7" runat="server" Text="FullName"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("firstname")+""+Eval("lastname") %>'
                                            Width="150px" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%# bind("gender") %>'
                                            Width="150px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label9" runat="server" Text="DateOfBirth"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("dob") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("address") %>' ReadOnly="true"
                                            TextMode="MultiLine" Width="150px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label11" runat="server" Text="Country"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# bind("countryname") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label12" runat="server" Text="State"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# bind("statename") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label13" runat="server" Text="City"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# bind("cityname") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label14" runat="server" Text="pinCode"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# bind("pincode") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label15" runat="server" Text="Mobile No."></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# bind("mobile") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label16" runat="server" Text="EmailId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# bind("email_id") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label17" runat="server" Text="Status"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# bind("status") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label18" runat="server" Text="Registration Date"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# bind("reg_date") %>' Width="150px"
                                            ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <div style="text-align: center; vertical-align: middle">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Style="position: relative;"
                    CssClass="submit_button" />
            </div>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder4">
    <!-- Manage Property -->
    <!--    Content ..... -->
    <div class="cngpwd">
        <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="MyTabStyle"
            Width="100%">
            <cc1:TabPanel runat="server" HeaderText="Manage Property Category" ID="TabPanel2"
                TabIndex="0">
                <ContentTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="Select PropertyType"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:DropDownList ID="drpPtype" runat="server" Width="205px" Height="25px">
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
                                    <asp:Label ID="Label25" runat="server" Text="PropertyCategory"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPCategory" runat="server" Width="200px" Height="25px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter Category" ForeColor="Red" Display="Dynamic" ControlToValidate="txtPCategory" ValidationGroup="PCat" ></asp:RequiredFieldValidator>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <asp:Button ID="btnPCategory" runat="server" Text="ADD" OnClick="btnPCategory_Click"
                                        Style="position: relative;" CssClass="submit_button"   ValidationGroup="PCat"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: center; margin: 40px 0px 40px 5px;">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Width="60%"
                            AllowPaging="True" HorizontalAlign="Center" BorderWidth="0px" PageSize="5" DataKeyNames="pcategory_id"
                            OnPageIndexChanging="GridView3_PageIndexChanging" OnRowCancelingEdit="GridView3_RowCancelingEdit"
                            OnRowDeleting="GridView3_RowDeleting" OnRowEditing="GridView3_RowEditing" OnRowUpdating="GridView3_RowUpdating">
                            <Columns>
                                <asp:TemplateField HeaderText="Property Category ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label28" runat="server" Text='<%# bind("pcategory_id") %>'></asp:Label></ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="Label29" runat="server" Text='<%# bind("pcategory_id") %>'></asp:Label></EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Property Type">
                                    <ItemTemplate>
                                        <asp:Label ID="Label26" runat="server" Text='<%# bind("property_type") %>'></asp:Label></ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="drpPtype" runat="server">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Property Category">
                                    <ItemTemplate>
                                        <asp:Label ID="Label27" runat="server" Text='<%# bind("category_name") %>'></asp:Label></ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# bind("category_name") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter Category" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox15" ValidationGroup="PCatupdate" ></asp:RequiredFieldValidator>
                                   
                                        </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="40px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel runat="server" HeaderText="Manage Property" ID="TabPanel3" TabIndex="1">
                <ContentTemplate>
                    <div style="margin: 0px 0px 20px 0px">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BorderColor="Black"
                            BorderStyle="Dashed" Width="100%" AllowPaging="True" HorizontalAlign="Center"
                            BorderWidth="0px" PageSize="5" OnPageIndexChanging="GridView4_PageIndexChanging"
                            OnRowCommand="GridView4_RowCommand" OnRowDataBound="GridView4_RowDataBound">
                            <Columns>
                                <asp:TemplateField HeaderText="Property<br/>Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Label30" runat="server" Text='<%# bind("property_id") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UserName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label31" runat="server" Text='<%# Eval("firstname")+"<br/>"+Eval("lastname") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Requirement<br/>Type">
                                    <ItemTemplate>
                                        <asp:Label ID="Label32" runat="server" Text='<%# bind("req_type") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Property<br/>Type & Category">
                                    <ItemTemplate>
                                        <asp:Label ID="Label33" runat="server" Text='<%# Eval("property_type")+"<br/>"+Eval("property_category") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Construction<br/>Age">
                                    <ItemTemplate>
                                        <asp:Label ID="Label34" runat="server" Text='<%# bind("construction_age") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price<br/>Range">
                                    <ItemTemplate>
                                        <asp:Label ID="Label35" runat="server" Text='<%# bind("p_range") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" Height="80px" Width="80px" ImageUrl='<%# bind("image1") %>' /></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Posting<br/>Date">
                                    <ItemTemplate>
                                        <asp:Label ID="Label36" runat="server" Text='<%# bind("posting_date") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Booking<br/>Status">
                                    <ItemTemplate>
                                        <asp:Label ID="Label37" runat="server" Text='<%# bind("bookingstatus") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="IsActive">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton9" runat="server" CommandName="IsActiveF" CommandArgument='<%# bind("property_id") %>'
                                            Text='<%# bind("isactive") %>'></asp:LinkButton></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# bind("property_id") %>'
                                            CommandName="More1">MoreInfo...</asp:LinkButton></ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#EE5010" Height="60px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Button" Style="display: none" /><cc1:ModalPopupExtender
                        ID="ModalPopupExtender1" runat="server" TargetControlID="Button1" PopupControlID="pnlpopup4"
                        CancelControlID="btnCancel4" BackgroundCssClass="modalBackground" DynamicServicePath=""
                        Enabled="True">
                    </cc1:ModalPopupExtender>
                    <asp:Panel ID="pnlpopup4" runat="server" BackColor="White" Width="52%" Style="margin: 5px 5px 5px 5px">
                        <div style="background-color: #ee5010; width: 100%; height: 40px; text-align: center;
                            font-family: @Kozuka Gothic Pr6N M; font-size: larger">
                            Property-Details
                        </div>
                        <asp:DetailsView ID="DetailsView2" runat="server" Width="100%" AutoGenerateRows="False">
                            <Fields>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div>
                                            <div style="float: left">
                                                <div class="smallimg" style="border: solid 1px black; width: 300px; height: 110px;
                                                    margin: 10px 10px 10px 10px;">
                                                    <asp:Image ID="Image4" runat="server" Height="110px" Width="300px" ImageUrl='<%# bind("image1") %>' /></div>
                                                <div class="smallimg" style="border: solid 1px black; width: 300px; height: 110px;
                                                    margin: 10px 10px 10px 10px">
                                                    <asp:Image ID="Image1" runat="server" Height="110px" Width="300px" ImageUrl='<%# bind("image2") %>' /></div>
                                                <div class="smallimg" style="border: solid 1px black; width: 300px; height: 110px;
                                                    margin: 10px 10px 10px 10px">
                                                    <asp:Image ID="Image2" runat="server" Height="110px" Width="300px" ImageUrl='<%# bind("image3") %>' /></div>
                                                <div class="smallimg" style="border: solid 1px black; width: 300px; height: 110px;
                                                    margin: 10px 10px 10px 10px">
                                                    <asp:Image ID="Image3" runat="server" Height="110px" Width="300px" ImageUrl='<%# bind("image4") %>' /></div>
                                            </div>
                                            <div style="border: solid 0px black; width: 32%; height: 535px; margin: 10px 10px 10px 10px;
                                                float: left">
                                                <table style="height: 100%; margin-left: 5%;">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label19" runat="server" Text="UserName"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox16" runat="server" Text='<%# Eval("firstname")+""+Eval("lastname") %>'
                                                                Width="150px" ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label39" runat="server" Text="RequirementType"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox17" runat="server" Text='<%# bind("req_type") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label40" runat="server" Text="PropertyType"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox18" runat="server" Text='<%# bind("property_type") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label41" runat="server" Text="PropertyCategory"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox19" runat="server" Text='<%# bind("property_category") %>'
                                                                Width="150px" ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label42" runat="server" Text="ConstructionAge"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox20" runat="server" Text='<%# bind("construction_age") %>'
                                                                Width="150px" ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label43" runat="server" Text="Furnish"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox21" runat="server" Text='<%# bind("furnish") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label44" runat="server" Text="PriceRange"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox22" runat="server" Text='<%# bind("p_range") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label45" runat="server" Text="Address"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox23" runat="server" Text='<%# Eval("paddress")+", "+Eval("countryname")+", "+Eval("statename")+", "+Eval("cityname")+", "+Eval("pincode") %>'
                                                                Width="150px" ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label46" runat="server" Text="BHK"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox24" runat="server" Text='<%# bind("bhk") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label47" runat="server" Text="TotalFloor"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox25" runat="server" Text='<%# bind("total_floor") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label48" runat="server" Text="Facing"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox26" runat="server" Text='<%# bind("facing") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label49" runat="server" Text="FloorNo"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox27" runat="server" Text='<%# bind("floor_no") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label50" runat="server" Text="No.of BathRoom"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox28" runat="server" Text='<%# bind("bathroom") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label51" runat="server" Text="CoveredArea in sqft"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox29" runat="server" Text='<%# bind("covered_area") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label52" runat="server" Text="OtherFeatures"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox30" runat="server" Text='<%# bind("features") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label53" runat="server" Text="DateofPosting"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox31" runat="server" Text='<%# bind("posting_date") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label54" runat="server" Text="BookingStatus"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &#160;&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox32" runat="server" Text='<%# bind("bookingstatus") %>' Width="150px"
                                                                ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Fields>
                        </asp:DetailsView>
                        <div style="text-align: center; vertical-align: middle">
                            <asp:Button ID="btnCancel4" runat="server" Text="Cancel" Style="position: relative;"
                                CssClass="submit_button" /></div>
                    </asp:Panel>
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
    </div>
</asp:Content>
<asp:Content ID="Content8" runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
    <!--    Content ..... -->
    <div class="cngpwd">
        <cc1:TabContainer ID="TabContainer2" runat="server" ActiveTabIndex="0" CssClass="MyTabStyle"
            Width="100%">
            <cc1:TabPanel runat="server" HeaderText="Manage Advertise Plan" ID="TabPanel4" TabIndex="0">
                <ContentTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label38" runat="server" Text="Plan-Name"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox33" runat="server" Width="200px" Height="25px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ControlToValidate="TextBox33" ValidationGroup="AdPlan" ErrorMessage="Enter PlanName"/>
                                </td>
                            </tr>
                            <tr>
                            <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label57" runat="server" Text="Plan-Amount"></asp:Label>
                                </td>
                                
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                <td>
                                    <asp:TextBox ID="TextBox35" runat="server" Width="200px" Height="25px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ControlToValidate="TextBox35" ValidationGroup="AdPlan" ErrorMessage="Enter Amount"/>
                                </td>
                            </tr>
                            <tr>
                            <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label58" runat="server" Text="Plan-Validity"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox36" runat="server" Width="200px" Height="25px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ControlToValidate="TextBox36" ValidationGroup="AdPlan" ErrorMessage="Enter No Of Days"/>
                                     <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Enter No.of Days in 0 to 3-Digit" ControlToValidate="TextBox36" ValidationGroup="AdPlan" 
                            Display="Dynamic" ForeColor="Red" MinimumValue="0" MaximumValue="999" Type="Integer"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                            <td>&nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td align="center" colspan="3">
                                    <asp:Button ID="Button2" runat="server" Text="ADD" OnClick="Button2_Click" Style="position: relative;" ValidationGroup="AdPlan" 
                                        CssClass="submit_button" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: center; margin: 40px 0px 40px 5px;">
                        <asp:GridView ID="GridView7" runat="server" BorderColor="Black" AutoGenerateColumns="False"
                            BorderStyle="Dashed" Width="60%" AllowPaging="True" HorizontalAlign="Center"
                            BorderWidth="0px" PageSize="5" DataKeyNames="planid" OnRowCancelingEdit="GridView7_RowCancelingEdit"
                            OnRowDeleting="GridView7_RowDeleting" OnRowEditing="GridView7_RowEditing" OnRowUpdating="GridView7_RowUpdating"
                            OnPageIndexChanging="GridView7_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="Plan ID">
                                    <EditItemTemplate>
                                        <asp:Label ID="Labelpid" runat="server" Text='<%# bind("planid") %>'></asp:Label></EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Labelpid2" runat="server" Text='<%# bind("planid") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Plan Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox38" runat="server" Text='<%# bind("plan_name") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" ForeColor="Red" ControlToValidate="TextBox38" ValidationGroup="AdPlanUpdate" ErrorMessage="*"/>
                                        </EditItemTemplate>
                                        
                                    <ItemTemplate>
                                        <asp:Label ID="Labelpname1" runat="server" Text='<%# bind("plan_name") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Plan Amount">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox37" runat="server" Text='<%# bind("plan_amount") %>'></asp:TextBox></EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label59" runat="server" Text='<%# bind("plan_amount") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Plan Validity">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox34" runat="server" Text='<%# bind("plan_validity") %>'></asp:TextBox>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter No.of Days in 0 to 3-Digit" ControlToValidate="TextBox34" ValidationGroup="AdPlanupdate" 
                            Display="Dynamic" ForeColor="Red" MinimumValue="0" MaximumValue="999" Type="Integer"></asp:RangeValidator></EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label55" runat="server" Text='<%# bind("plan_validity") %>'></asp:Label></ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="True" ValidationGroup="AdPlanupdate"/>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="40px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel runat="server" HeaderText="Manage Property Advertise" ID="TabPanel5"
                TabIndex="1">
                <ContentTemplate>
                    <div style="text-align: center; margin: 40px 0px 40px 5px;">
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" Width="100%"
                            AllowPaging="True" HorizontalAlign="Center" BorderWidth="0px" PageSize="5" OnPageIndexChanging="GridView6_PageIndexChanging"
                            OnRowCommand="GridView6_RowCommand" OnRowDataBound="GridView6_RowDataBound" OnRowDeleting="GridView6_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Ads ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label56" runat="server" Text='<%# bind("adv_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Ads PostedBy">
                                    <ItemTemplate>
                                        <asp:Label ID="Label60" runat="server" Text='<%# bind("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Property Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Label61" runat="server" Text='<%# bind("property_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="AdsPlan">
                                    <ItemTemplate>
                                        <asp:Label ID="Label62" runat="server" Text='<%# bind("plan_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Ads Description">
                                    <ItemTemplate>
                                        <asp:Label ID="Label63" runat="server" Text='<%# bind("description") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="StartDate">
                                    <ItemTemplate>
                                        <asp:Label ID="Label64" runat="server" Text='<%# bind("startdate") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="EndDate">
                                    <ItemTemplate>
                                        <asp:Label ID="Label65" runat="server" Text='<%# bind("enddate","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="IsActive">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="AdsLinkButton" runat="server" CommandName="IsActiveF" CommandArgument='<%# bind("adv_id") %>'
                                            Text='<%# bind("status") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="40px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
    </div>
</asp:Content>
<asp:Content ID="Content9" runat="server" ContentPlaceHolderID="ContentPlaceHolder6">
    <!--    Content ..... -->
    <!--    Feedback ..... -->
    <div class="cngpwd">
        <asp:DataList ID="DLFeedback" runat="server" Width="100%" CellPadding="0" OnItemCommand="DLFeedback_ItemCommand">
            <ItemTemplate>
                <asp:Panel ID="Panel2" runat="server">
                    <div id="fb1">
                        <div id="uimg">
                            <asp:Image ID="Image1" runat="server" CssClass="imgcls" ImageUrl="../images/guests.png" />
                        </div>
                        <div id="uname">
                            <asp:Label ID="lblfbuid" runat="server" Text='<%# bind("email") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("username")%>'></asp:Label>
                        </div>
                        <div style="width: 180px; height: 70px; margin-left: 15px; float: left; margin-top: 0px;">
                            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" CssClass="txtarea" Height="65"
                                ReadOnly="true" Text='<%# bind("fmsg") %>'></asp:TextBox>
                        </div>
                        <div id="lk">
                            <asp:LinkButton ID="lnkrply" runat="server" CommandName="Reply" CommandArgument='<%# bind("fbid")%>'>Reply</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="lnkdel" runat="server" CommandName="Deletefmsg" CommandArgument='<%# bind("fbid")%>'
                                OnClientClick="return confirm('Are You Sure to Delete Msg??')">Delete</asp:LinkButton>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%# bind("fmsgdate") %>'></asp:Label>
                        </div>
                    </div>
                </asp:Panel>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:Button ID="btnPopUpGridView9" runat="server" Style="display: none" />
    <cc1:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="btnPopUpGridView9"
        PopupControlID="Panel1" CancelControlID="Button9" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Width="38%" Style="margin: 5px 5px 5px 5px;
        overflow: scroll;">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <table width="100%" style="border: Solid 3px #ee5010;" cellpadding="0" cellspacing="10px">
                <tr style="background-color: #ee5010; height: 10%; color: White; font-weight: bold;
                    font-size: larger" align="center">
                    <td>
                        <asp:Image ID="userimg" runat="server" Height="70px" Width="70px" Style="margin: 10px 0px 0px 0px" /><br />
                        <asp:Label ID="lbluname" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:ImageButton ID="Button9" runat="server" Height="35" Width="35" ImageUrl="~/images/cancel.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="sdmsg" runat="server" TextMode="MultiLine" Height="70px" Width="215px"
                                        Style="margin: 9% 0% 14% 3%"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="sdmsg" ForeColor="Red" Display="Dynamic" ValidationGroup="reply"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:Button ID="sdbtn" runat="server" Text="Reply..." OnClick="sdbtn_Click" Style="position: relative;
                                        margin-left: 15%;" CssClass="submit_button"  ValidationGroup="reply"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
            </table>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content10" runat="server" ContentPlaceHolderID="ContentPlaceHolder7">
    <!--    Content ..... -->
    <!-- Change Password -->
    <div style="text-align: center; background-color: White">
        <div align="center" class="cngpwd">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label77" runat="server" Text="Enter Old Password"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox42" runat="server" TextMode="Password" Width="200" Height="25"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" 
                        ControlToValidate="TextBox42" ForeColor="Red" Display="Dynamic" ValidationGroup="cngpwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label78" runat="server" Text="Enter New Password"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox43" runat="server" TextMode="Password" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" 
                        ControlToValidate="TextBox43" ForeColor="Red" Display="Dynamic" ValidationGroup="cngpwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label79" runat="server" Text="Confirm New Password"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox44" runat="server" TextMode="Password" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" 
                        ControlToValidate="TextBox44" ForeColor="Red" Display="Dynamic" ValidationGroup="cngpwd"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox44" runat="server" ForeColor="Red" Display="Dynamic" ValidationGroup="cngpwd" ErrorMessage="Enter Same Password" ></asp:CompareValidator>
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="Button3" runat="server" Text="Reset" OnClick="Button3_Click" Style="position: relative;" ValidationGroup="cngpwd"
                            CssClass="submit_button" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content11" runat="server" ContentPlaceHolderID="ContentPlaceHolder8">
    <!--Manage Country,State,City -->
    <!--    Content ..... -->
    <div class="cngpwd">
        <cc1:TabContainer ID="TabContainer3" runat="server" CssClass="MyTabStyle" Width="100%"
            ActiveTabIndex="6">
            <cc1:TabPanel runat="server" HeaderText="Manage Country" ID="Country" TabIndex="6">
                <ContentTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label66" runat="server" Text="Country"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox39" runat="server" Width="220" Height="25"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" 
                        ControlToValidate="TextBox39" ForeColor="Red" Display="Dynamic" ValidationGroup="country"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <asp:Button ID="Button7" runat="server" Text="Add" OnClick="Button7_Click" Style="position: relative;" ValidationGroup="country"
                                        CssClass="submit_button" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: center; margin: 40px 0px 40px 5px;">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" Width="60%"
                            AllowPaging="True" HorizontalAlign="Center" BorderWidth="0px" PageSize="5" DataKeyNames="country_id"
                            OnPageIndexChanging="GridView5_PageIndexChanging" OnRowDeleting="GridView5_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="CountryId">
                                    <ItemTemplate>
                                        <asp:Label ID="Label73" runat="server" Text='<%# bind("country_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CountryName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label74" runat="server" Text='<%# bind("countryname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="40px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel runat="server" HeaderText="Manage State" ID="State" TabIndex="7">
                <ContentTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label67" runat="server" Text="Select Country"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="220" Height="25">
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
                                    <asp:Label ID="Label68" runat="server" Text="State"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox40" runat="server" Width="220" Height="25"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" 
                        ControlToValidate="TextBox40" ForeColor="Red" Display="Dynamic" ValidationGroup="state"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <asp:Button ID="Button6" runat="server" Text="Add" OnClick="Button6_Click" Style="position: relative;" ValidationGroup="state"
                                        CssClass="submit_button" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: center; margin: 40px 0px 40px 5px;">
                        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" Width="60%"
                            AllowPaging="True" HorizontalAlign="Center" BorderWidth="0px" PageSize="5" DataKeyNames="state_id"
                            OnPageIndexChanging="GridView8_PageIndexChanging" OnRowDeleting="GridView8_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="StateId">
                                    <ItemTemplate>
                                        <asp:Label ID="Label74" runat="server" Text='<%# bind("state_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CountryName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label75" runat="server" Text='<%# bind("countryname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="StateName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label76" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="40px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel runat="server" HeaderText="Manage City" ID="City" TabIndex="8">
                <HeaderTemplate>
                    Manage City
                </HeaderTemplate>
                <ContentTemplate>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label69" runat="server" Text="Select Country"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                        AutoPostBack="True" Width="220" Height="25">
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
                                    <asp:Label ID="Label70" runat="server" Text="Select State"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="220" Height="25">
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
                                    <asp:Label ID="Label71" runat="server" Text="City"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox41" runat="server" Width="220" Height="25"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" 
                        ControlToValidate="TextBox41" ForeColor="Red" Display="Dynamic" ValidationGroup="city"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <asp:Button ID="Button5" runat="server" Text="Add" OnClick="Button5_Click" Style="position: relative;" ValidationGroup="city"
                                        CssClass="submit_button" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: center; margin: 40px 0px 40px 5px;">
                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" Width="60%"
                            AllowPaging="True" HorizontalAlign="Center" BorderWidth="0px" PageSize="5" DataKeyNames="city_id"
                            OnPageIndexChanging="GridView9_PageIndexChanging" OnRowDeleting="GridView9_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="CityId">
                                    <ItemTemplate>
                                        <asp:Label ID="Label72" runat="server" Text='<%# bind("city_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CountryName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label73" runat="server" Text='<%# bind("countryname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="StateName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label74" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CityName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label75" runat="server" Text='<%# bind("cityname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#EE5010" Height="40px" />
                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
    </div>
</asp:Content>
