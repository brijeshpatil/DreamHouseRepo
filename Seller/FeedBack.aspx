<%@ page title="" language="C#" masterpagefile="~/Seller/MasterPage.master" autoeventwireup="true" inherits="Buyer_Default, App_Web_pivsqroo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .MyTabStyle
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 11pt;
            background-color: #fff;
            border-top-width: 0;
            border: solid 1px #d7d7d7;
            border-top-color: #ffffff;
            height:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div style="width: 100%; text-align: center; background-color: #ee5010; color: White;
        font-size: 1.2em; text-transform: uppercase; font-family: 'ambleregular'; padding: 8px 0;">
        FeedBack
    </div>
    <div class="MyTabStyle" style="margin-top: 5px;">
        <table style="margin: 10px 10px 10px 10px">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Message " Style="float: left;" />
                </td>
                <td valign="bottom">
                    <asp:TextBox ID="TextBox2" runat="server" Width="220px" Height="45px" TextMode="MultiLine"
                        Style="margin-left: 15px;" />
                &nbsp;&nbsp;
                </td>
                <td valign="bottom"><asp:Button ID="Button1" runat="server" Text="Send..."  
                        style="position:relative;margin-left: 15px;" CssClass="submit_button" onclick="Button1_Click" ValidationGroup="feedback" />    </td>
            </tr>
            <tr>
            <td colspan="2"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="feedback" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Message..."/>
            </td>
            </tr>
        </table>
    </div>
</asp:Content>
