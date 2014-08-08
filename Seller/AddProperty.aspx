<%@ page title="" language="C#" masterpagefile="~/Seller/MasterPage.master" autoeventwireup="true" inherits="Buyer_Default, App_Web_taj3zlyt" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../HTML-Files/style.css" rel="stylesheet" type="text/css" />
    <link href="../HTML-Files/css/responsive.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /*Ajax TabControl Css*/
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
        
        /*Update Property Table Css*/
        #content
        {
            width: 100%;
            margin: 6% auto 0;
        }
        .table
        {
            overflow: hidden;
            border: 1px solid #d3d3d3;
            background: #fefefe;
            width: 100%;
            margin: 5% auto 0;
            -moz-border-radius: 5px; /* FF1+ */
            -webkit-border-radius: 5px; /* Saf3-4 */
            border-radius: 5px;
            -moz-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
            -webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
        }
        
        .th
        {
            color: White;
            padding: 18px;
            background: -moz-linear-gradient(100% 20% 90deg, #ee5010, #ee5010);
            background: -webkit-gradient(linear, 0% 0%, 0% 20%, from(#ee5010), to(#ee5010));
            height: 40px;
            padding-top: 22px;
            text-shadow: 1px 1px 1px #fff;
        }
        .td
        {
            padding: 18px;
            background: -moz-linear-gradient(100% 25% 90deg, #fefefe, #f9f9f9);
            background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f9f9f9), to(#fefefe));
            border-top: 1px solid #e0e0e0;
            border-right: 1px solid #e0e0e0;
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
        <p>
            Properties</p>
    </div>
    <cc1:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle" Width="100%"
        ActiveTabIndex="0">
        <cc1:TabPanel runat="server" HeaderText="Add New Property" ID="TabPanel1" TabIndex="0">
            <ContentTemplate>
                <div style="width: 100%; height: 25px; background-color: #41474B; color: White;"
                    align="center">
                    Add New Property</div>
                <div style="width: 100%; margin: 10px 10px 10px 10px;" align="center">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="PropertyName " />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="215px" Height="25px" Style="margin-left: 15px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="addproperty" runat="server" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="RequirementType" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Sell</asp:ListItem>
                                    <asp:ListItem>Rent</asp:ListItem>
                                    <asp:ListItem>PG</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="PropertyType" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="220px" Height="25px" Style="margin-left: 15px"
                                    OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList2" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="PropertyCategory" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList3" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="ConstructionAge" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Under Construction</asp:ListItem>
                                    <asp:ListItem>New-Ready to move-in</asp:ListItem>
                                    <asp:ListItem>0 - 2 Years old</asp:ListItem>
                                    <asp:ListItem>2 - 5 Years old</asp:ListItem>
                                    <asp:ListItem>5 - 10 Years old</asp:ListItem>
                                    <asp:ListItem>10 - 15 Years old</asp:ListItem>
                                    <asp:ListItem>15 - 20 Years old</asp:ListItem>
                                    <asp:ListItem>More than 20 Years old</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList4" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Furnish" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList5" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                   <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="addproperty" InitialValue="--Select--" runat="server" ControlToValidate="DropDownList5" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Price" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" Width="215px" Height="25px" Style="margin-left: 15px" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="addproperty" runat="server" ControlToValidate="TextBox10" ForeColor="Red" Display="Dynamic" ErrorMessage="*" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="addproperty" ErrorMessage="Enter only Numeric Value" ControlToValidate="TextBox10" Operator="DataTypeCheck" Type="Double"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Address" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="25px" TextMode="MultiLine"
                                    Style="margin-left: 15px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="addproperty" runat="server" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Country" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList7" runat="server" Width="220px" Height="25px" Style="margin-left: 15px"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList7" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="State" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList8" runat="server" Width="220px" Height="25px" Style="margin-left: 15px"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList8" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="City" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList9" runat="server" Width="220px" Height="25px" Style="margin-left: 15px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList9" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text="Pincode" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="215px" Height="25px" Style="margin-left: 15px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="addproperty" runat="server" ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text="BHK" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList10" runat="server" Width="220px" Height="25px"
                                    Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>1 BHK</asp:ListItem>
                                    <asp:ListItem>2 BHK</asp:ListItem>
                                    <asp:ListItem>3 BHK</asp:ListItem>
                                    <asp:ListItem>4 BHK</asp:ListItem>
                                    <asp:ListItem>5 BHK</asp:ListItem>
                                    <asp:ListItem>>5 BHK</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="addproperty" InitialValue="--Select--" runat="server" ControlToValidate="DropDownList10" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="TotalFloor" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList11" runat="server" Width="220px" Height="25px"
                                    Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>1 Floor</asp:ListItem>
                                    <asp:ListItem>2 Floor</asp:ListItem>
                                    <asp:ListItem>3 Floor</asp:ListItem>
                                    <asp:ListItem>4 Floor</asp:ListItem>
                                    <asp:ListItem>5 Floor</asp:ListItem>
                                    <asp:ListItem>>5 Floor</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList11" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Floor No" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList12" runat="server" Width="220px" Height="25px"
                                    Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Ground Floor</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>Above 5th Floor</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList12" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Facing" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList13" runat="server" Width="220px" Height="25px"
                                    Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>North</asp:ListItem>
                                    <asp:ListItem>North-East</asp:ListItem>
                                    <asp:ListItem>East</asp:ListItem>
                                    <asp:ListItem>East-South</asp:ListItem>
                                    <asp:ListItem>South</asp:ListItem>
                                    <asp:ListItem>South-West</asp:ListItem>
                                    <asp:ListItem>West</asp:ListItem>
                                    <asp:ListItem>West-North</asp:ListItem>
                                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList13" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="Bathroom" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList14" runat="server" Width="220px" Height="25px"
                                    Style="margin-left: 15px">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>>3</asp:ListItem>
                                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList14" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="CoveredArea" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="215px" Height="25px" Style="margin-left: 15px" />
                                
                                <asp:DropDownList ID="DropDownList6" runat="server" style="margin-left:10px;">
                                <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Sq. Feet</asp:ListItem>
                                    <asp:ListItem>Cent</asp:ListItem>
                                    <asp:ListItem>Ares</asp:ListItem>
                                    <asp:ListItem>Sq. Yards</asp:ListItem>
                                    <asp:ListItem>Acre</asp:ListItem>
                                    <asp:ListItem>Sq. Meter</asp:ListItem>
                                    <asp:ListItem>Bigha</asp:ListItem>
                                    <asp:ListItem>Hectares</asp:ListItem>
                                    <asp:ListItem>Guntha</asp:ListItem>
                                    <asp:ListItem>Marla</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ValidationGroup="addproperty" runat="server" ControlToValidate="TextBox4" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ValidationGroup="addproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList6" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text="OtherFeatures" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="200px" Height="25px"
                                    Style="margin-left: 15px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ValidationGroup="addproperty" runat="server" ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label20" runat="server" Text="Image1" />
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" Height="25px" Style="margin-left: 15px"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ValidationGroup="addproperty" runat="server" ControlToValidate="FileUpload1" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label21" runat="server" Text="Image2" />
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" Width="215px" Height="25px" Style="margin-left: 15px"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ValidationGroup="addproperty" runat="server" ControlToValidate="FileUpload2" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label22" runat="server" Text="Image3" />
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload3" runat="server" Width="215px" Height="25px" Style="margin-left: 15px"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ValidationGroup="addproperty" runat="server" ControlToValidate="FileUpload3" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text="Image4" />
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload4" runat="server" Width="215px" Height="25px" Style="margin-left: 15px"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ValidationGroup="addproperty" runat="server" ControlToValidate="FileUpload4" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Add Property" OnClick="Button1_Click" ValidationGroup="addproperty"
                                    OnClientClick="return confirm('Are you Sure?');" CssClass="submit_button" style="position:relative;"/>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" Text="Cancel" 
                                    CssClass="submit_button" style="position:relative;" onclick="Button6_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel runat="server" HeaderText="Manage Your Property" ID="TabPanel2">
            <ContentTemplate>
                <div style="width: 100%; height: 25px; background-color: #41474B; color: White;"
                    align="center">
                    Manage Property</div>
                <div style="width: 100%; margin: 10px 10px 10px 10px;" align="center">
                    <asp:DropDownList ID="DropDownList29" runat="server" Width="200px" AutoPostBack="True"
                        OnSelectedIndexChanged="DropDownList29_SelectedIndexChanged">
                    </asp:DropDownList>
                    
                    <div style="margin-top: 10px;">
                        <asp:DataList ID="DataList2" runat="server" OnCancelCommand="DataList2_CancelCommand"
                            OnDeleteCommand="DataList2_DeleteCommand" OnEditCommand="DataList2_EditCommand"
                            OnUpdateCommand="DataList2_UpdateCommand" DataKeyField="property_id">
                            <EditItemTemplate>
                                
                                    <table class="table" cellspacing="0">
                                        <tr>
                                            <th class="th">
                                                Property Atrributes
                                            </th>
                                            <th class="th">
                                                Values
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Property Name
                                            </td>
                                            <td class="td">
                                                <asp:TextBox ID="TextBox11" runat="server" Width="200px" Height="25px" Text='<%#bind("propertyname") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Req Type
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList15" Width="205px" Height="25px" 
                                                    runat="server">
                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                    <asp:ListItem>Sell</asp:ListItem>
                                                    <asp:ListItem>Rent</asp:ListItem>
                                                    <asp:ListItem>PG</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Property Type
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList16" Width="205px" Height="25px" 
                                                    runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="DropDownList16_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Property Category
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList17" Width="205px" Height="25px" runat="server" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Construction Age
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList18" Width="205px" Height="25px"  runat="server">
                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                    <asp:ListItem>Under Construction</asp:ListItem>
                                                    <asp:ListItem>New-Ready to move-in</asp:ListItem>
                                                    <asp:ListItem>0 - 2 Years old</asp:ListItem>
                                                    <asp:ListItem>2 - 5 Years old</asp:ListItem>
                                                    <asp:ListItem>5 - 10 Years old</asp:ListItem>
                                                    <asp:ListItem>10 - 15 Years old</asp:ListItem>
                                                    <asp:ListItem>15 - 20 Years old</asp:ListItem>
                                                    <asp:ListItem>More than 20 Years old</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Furnish
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList19" Width="205px" Height="25px" runat="server" SelectedValue='<%# bind("furnish") %>'>
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Price
                                            </td>
                                            <td class="td">
                                                <asp:TextBox ID="TextBox12" runat="server" Text='<%#bind("p_range") %>' Width="200px" Height="25px" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Manageproperty" runat="server" ControlToValidate="TextBox12" ForeColor="Red" Display="Dynamic" ErrorMessage="*" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="Manageproperty" ErrorMessage="Enter only Numeric Value" ControlToValidate="TextBox12" Operator="DataTypeCheck" Type="Double"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Address
                                            </td>
                                            <td class="td">
                                                <asp:TextBox ID="TextBox6" runat="server" Width="185px" TextMode="MultiLine"
                                                    Text='<%#bind("paddress") %>'></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ValidationGroup="Manageproperty" runat="server" ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Country
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList21" Width="205px" Height="25px" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="DropDownList21_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                State
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList22" Width="205px" Height="25px" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="DropDownList22_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                City
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList23" Width="205px" Height="25px" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Pincode
                                            </td>
                                            <td class="td">
                                                <asp:TextBox ID="TextBox7" runat="server" Width="200px" Height="25px"  Text='<%#bind("pincode") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ValidationGroup="Manageproperty" runat="server" ControlToValidate="TextBox7" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                BHK
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList24" Width="205px" Height="25px" runat="server" SelectedValue='<%# bind("bhk") %>'>
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>1 BHK</asp:ListItem>
                                                    <asp:ListItem>2 BHK</asp:ListItem>
                                                    <asp:ListItem>3 BHK</asp:ListItem>
                                                    <asp:ListItem>4 BHK</asp:ListItem>
                                                    <asp:ListItem>5 BHK</asp:ListItem>
                                                    <asp:ListItem>>5 BHK</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ValidationGroup="Manageproperty" runat="server" InitialValue="--Select--" ControlToValidate="DropDownList24" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Total Floor
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList25" Width="205px" Height="25px" runat="server" >
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>1 Floor</asp:ListItem>
                                                    <asp:ListItem>2 Floor</asp:ListItem>
                                                    <asp:ListItem>3 Floor</asp:ListItem>
                                                    <asp:ListItem>4 Floor</asp:ListItem>
                                                    <asp:ListItem>5 Floor</asp:ListItem>
                                                    <asp:ListItem>>5 Floor</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ValidationGroup="Manageproperty" InitialValue="--Select--" ControlToValidate="DropDownList25" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Floor No
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList26" Width="205px" Height="25px" runat="server" SelectedValue='<%# bind("floor_no") %>'>
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>Ground Floor</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                    <asp:ListItem>Above 5th Floor</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ValidationGroup="Manageproperty" InitialValue="--Select--" ControlToValidate="DropDownList26" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Facing
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList27" Width="205px" Height="25px" runat="server" >
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>North</asp:ListItem>
                                                    <asp:ListItem>North-East</asp:ListItem>
                                                    <asp:ListItem>East</asp:ListItem>
                                                    <asp:ListItem>East-South</asp:ListItem>
                                                    <asp:ListItem>South</asp:ListItem>
                                                    <asp:ListItem>South-West</asp:ListItem>
                                                    <asp:ListItem>West</asp:ListItem>
                                                    <asp:ListItem>West-North</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ValidationGroup="Manageproperty" InitialValue="--Select--" ControlToValidate="DropDownList27" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                No.Bathroom
                                            </td>
                                            <td class="td">
                                                <asp:DropDownList ID="DropDownList28" Width="205px" Height="25px" runat="server" SelectedValue='<%# bind("bathroom") %>'>
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>>3</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ValidationGroup="Manageproperty" InitialValue="--Select--" ControlToValidate="DropDownList28" ForeColor="Red" Display="Dynamic" ErrorMessage="*"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Covered Area
                                            </td>
                                            <td class="td">
                                                <asp:TextBox ID="TextBox8" runat="server" Width="200px" Height="25px"  Text='<%#bind("covered_area") %>'></asp:TextBox>
                                                 &nbsp;&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Other Features
                                            </td>
                                            <td class="td">
                                                <asp:TextBox ID="TextBox9" runat="server" Width="185px" TextMode="MultiLine"
                                                    Text='<%#bind("features") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image1
                                            </td>
                                            <td class="td">
                                                <asp:Image ID="Image5" runat="server" Height="100px" Width="100px" ImageUrl='<%#bind("image1") %>' />
                                                &nbsp;&nbsp;<asp:FileUpload
                                                    ID="FileUpload5" runat="server" Width="200px" Height="25px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image2
                                            </td>
                                            <td class="td">
                                                <asp:Image ID="Image6" runat="server" Height="100px" Width="100px" ImageUrl='<%#bind("image2") %>' />
                                                &nbsp;&nbsp;<asp:FileUpload ID="FileUpload6" runat="server" Width="200px" Height="25px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image3
                                            </td>
                                            <td class="td">
                                                <asp:Image ID="Image7" runat="server" Height="100px" Width="100px" ImageUrl='<%#bind("image3") %>' />
                                                &nbsp;&nbsp;<asp:FileUpload ID="FileUpload7" runat="server" Width="200px" Height="25px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image4
                                            </td>
                                            <td class="td">
                                                <asp:Image ID="Image8" runat="server" Height="100px" Width="100px" ImageUrl='<%#bind("image4") %>' />
                                                &nbsp;&nbsp;<asp:FileUpload ID="FileUpload8" runat="server" Width="200px" Height="25px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                IsActive
                                            </td>
                                            <td class="td">
                                                <asp:Label ID="Label45" runat="server" Text='<%#bind("isactive") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" align="center">
                                            <asp:Button ID="Button4" runat="server" Text="Update" ValidationGroup="Manageproperty" CommandName="update" CssClass="submit_button" UseSubmitBehavior="false" style="position:relative;"/>&nbsp;&nbsp;<asp:Button ID="Button5"
                                                runat="server" Text="Cancel" CommandName="cancel"  CssClass="submit_button" style="position:relative;"/></td></tr>
                                    </table>
                                
                            </EditItemTemplate>
                            <ItemTemplate>
                               
                                    <table class="table" cellspacing="0">
                                        <tr>
                                            <th class="th" align="left">
                                                Property Atrributes
                                            </th>
                                            <th class="th">
                                                Values
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Property Name
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label24" runat="server" Text='<%# bind("propertyname") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Req Type
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label25" runat="server" Text='<%# bind("req_type") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Property Type
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label26" runat="server" Text='<%# bind("property_type") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Property Category
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label27" runat="server" Text='<%# bind("property_category") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Construction Age
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label28" runat="server" Text='<%# bind("construction_age") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Furnish
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label29" runat="server" Text='<%# bind("furnish") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Price
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label30" runat="server" Text='<%# bind("p_range") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Address
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label31" runat="server" Text='<%# Eval("paddress")+","+Eval("pincode") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                        <td class="td">Country</td>
                                        <td class="td" align="center">
                                            <asp:Label ID="Label32" runat="server" Text='<%#bind("countryname") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                        <td class="td">State</td>
                                        <td class="td" align="center">
                                            <asp:Label ID="Label33" runat="server" Text='<%#bind("statename") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                        <td class="td">City</td>
                                        <td class="td" align="center">
                                            <asp:Label ID="Label34" runat="server" Text='<%#bind("cityname") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                BHK
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label36" runat="server" Text='<%# bind("bhk") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Total Floor
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label37" runat="server" Text='<%# bind("total_floor") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Floor No
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label38" runat="server" Text='<%# bind("floor_no") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Facing
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label39" runat="server" Text='<%# bind("facing") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                No.Bathroom
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label40" runat="server" Text='<%# bind("bathroom") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Covered Area
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label41" runat="server" Text='<%# bind("covered_area") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Other Features
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label42" runat="server" Text='<%# bind("features") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image1
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Image ID="Image1" Height="100px" Width="100px" runat="server" ImageUrl='<%# bind("image1") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image2
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Image ID="Image2" Height="100px" Width="100px" runat="server" ImageUrl='<%# bind("image2") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image3
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Image ID="Image3" Height="100px" Width="100px" runat="server" ImageUrl='<%# bind("image3") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                Image4
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Image ID="Image4" Height="100px" Width="100px" runat="server" ImageUrl='<%# bind("image4") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td">
                                                IsActive
                                            </td>
                                            <td class="td" align="center">
                                                <asp:Label ID="Label43" runat="server" Text='<%# bind("isactive") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="td" align="center">
                                                <asp:Button ID="Button2" runat="server" Text="Edit" CommandName="edit"  CssClass="submit_button" style="position:relative;"/>&nbsp;&nbsp;<asp:Button
                                                    ID="Button3" runat="server" Text="Delete" CommandName="delete"  CssClass="submit_button"  style="position:relative;"/>
                                            </td>
                                            
                                        </tr>
                                    </table>
                               
                            </ItemTemplate>
                        </asp:DataList>
                        </div>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="Booked Property Details">
            <ContentTemplate>
                <div style="width: 100%; height: 25px; background-color: #41474B; color: White;"
                    align="center">
                    Booked Property</div>
                <div style="width: 100%; margin:10px 0px 10px 0px;" align="center">
                <asp:DropDownList ID="DropDownList20" runat="server" Width="220" Height="25" 
            AutoPostBack="True" onselectedindexchanged="DropDownList20_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <div class="width-container" style="margin-top: 20px; width: 100%;">
                    <div id="container-sidebar" style="width: 100%;">
                        <div class="content-boxed">
                            <h2 class="title-bg" style="font-weight: bold;">
                                Property Information<span></span>
                            </h2>
                            
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
                                Buyer Information</h2>
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
            </ContentTemplate>
        </cc1:TabPanel>
    </cc1:TabContainer>
</asp:Content>
