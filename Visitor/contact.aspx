<%@ page title="" language="C#" masterpagefile="~/Visitor/Visitor.master" autoeventwireup="true" inherits="_Default, App_Web_y4cyyyrc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <!-- Content ContentPlace Holder -->
    <div class="content_bottom">
        <h2>
            Contact Us</h2>
        <div class="contact-form">
          
            <div>
                <span>
                    <asp:Label ID="Label1" runat="server" Text="Name" class="label"/></span> 
                    <span>
                        <asp:TextBox ID="TextBox1" runat="server" class="textbox"/><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" ErrorMessage="Enter YourName"></asp:RequiredFieldValidator></span>
            </div>
            <div>
                <span>
                    <asp:Label ID="Label2" runat="server" Text="E-mail" class="label"/></span> <span>
                            <asp:TextBox ID="TextBox2" runat="server" class="textbox"/>
                            <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" ErrorMessage="Enter Your EmailId"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ErrorMessage="Enter Correct EmailId" 
                    ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </span>

            </div>
            <div>
                <span>
                    <asp:Label ID="Label3" runat="server" Text="Message" class="label"/></span> <span>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" ErrorMessage="Enter Message"></asp:RequiredFieldValidator></span>
            </div>
            <div>
                <span>
                    <asp:Button ID="Button1" runat="server" Text="Send" class="submit_button" 
                    onclick="Button1_Click"/></span>
            </div>
          
        </div>
        <div class="contact_info">
            <h2>
                Find Us Here</h2>
            <div class="map">
                <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0"
                    marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed">
                </iframe>
                <br>
                <small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265"
                    style="color: #777; text-align: left; font-size: 0.85em">View Larger Map</a></small>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!-- Menu Content Place Holder -->
   <ul>
        <li><a href="DreamHouse.aspx">Home</a></li>
        <li><a href="searchproperty.aspx">Property</a></li>
        <li><a href="searchagent.aspx">Agents</a></li>
        <li><a href="about.aspx">About Us</a></li>
        <li  class="active"><a href="contact.aspx">Contact</a></li>
        <div class="clear">
        </div>
    </ul>
</asp:Content>
