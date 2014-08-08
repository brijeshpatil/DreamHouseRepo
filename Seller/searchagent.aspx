<%@ page title="" language="C#" masterpagefile="~/Seller/MasterPage.master" autoeventwireup="true" inherits="Buyer_Default, App_Web_xnpvdb53" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../HTML-Files/style.css" rel="stylesheet" type="text/css" />
    <link href="../HTML-Files/css/responsive.css" rel="stylesheet" type="text/css" />
    <script src="../HTML-Files/js/plugins.js" type="text/javascript"></script>
    <script src="../HTML-Files/js/script.js" type="text/javascript"></script>
    <style type="text/css">
        .MyTabStyle
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="width: 100%; text-align: center; background-color: #ee5010; color: White;
        font-size: 1.2em; text-transform: uppercase; font-family: 'ambleregular'; padding: 8px 0;">
        <p>
            Search Agents</p>
    </div>
    <div class="MyTabStyle" style="width: 100%; margin-top: 5px">
        <table width="450px" style="margin: 10px 10px 10px 10px">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Width="150px" Text="Enter Agent Name "/>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="20px"  />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Width="150px" Text="Select Location "/>
                </td>
                <td>
                     <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="29px" 
                         AutoPostBack="True" 
                         onselectedindexchanged="DropDownList1_SelectedIndexChanged" />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" Height="29px" 
                        AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" />
                </td>
                <td>&nbsp;&nbsp;</td>
                 <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="200px" Height="29px" />
                </td>
            </tr>
            
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="5" align="center">
                    <asp:Button ID="Button1" runat="server" Text="SEARCH" onclick="Button1_Click" CssClass="submit_button" style="position:relative;" />
                </td>
            </tr>
        </table>
        </div>
        <div class="MyTabStyle" style="width: 100%; margin-top: 5px">
            
                    <div class="content-boxed">
                        <h2 class="title-bg" style="background-color:#ee5010; color:White; font-size:large;">
                            Our Agents</h2>
                        <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                        <div class="agent-post">
                            <div class="agent-thumb">
                                <a href="#">
                                    <%--<img src="../HTML-Files/images/demo/agent-thumb.jpg" alt="">--%>
                                    <asp:Image ID="Image1" runat="server" Width="91" Height="103" ImageUrl='<%#bind("a_image") %>'/></a>
                            </div>
                            <div class="agent-details">
                                <h5>
                                    <a href="#">
                                        <asp:Label ID="Label3" runat="server" Text='<%#bind("a_name")%>'/></a></h5>
                                <h6>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("a_city")+","+Eval("a_state")+","+Eval("a_country")%>'></asp:Label></h6>
                                <ul class="fancy-list">
                                    <li><span>Mobile:</span><asp:Label ID="Label5" runat="server" Text='<%#bind("a_mobile")%>'></asp:Label></li>
                                    <li><span>Email Id:</span><asp:Label ID="Label6" runat="server" Text='<%#bind("a_email")%>'></asp:Label></li>
                                </ul>
                            </div>
                            <div class="agent-social">
                                <div class="social-icons">
                                    <a class="facebook" href="http://www.facebook.com" target="_blank">F</a> <a class="twitter"
                                        href="https://www.twitter.com/Progression_S" target="_blank">t</a> <a class="skype"
                                            href="http://www.skype.com" target="_blank">s</a> <a class="linkedin" href="http://www.linkedin.com/"
                                                target="_blank">l</a>
                                </div>
                                <!-- close .social-icons -->
                            </div>
                            <div class="clearfix">
                            </div>
                            <hr>
                        </div>
                        </ItemTemplate>

                        </asp:DataList>
                        
                        
                        
                        <div class="clearfix">
                        </div>
                    </div>
                
        </div>
    
</asp:Content>
