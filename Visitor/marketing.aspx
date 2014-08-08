<%@ page title="" language="C#" masterpagefile="~/Visitor/MasterPage.master" autoeventwireup="true" inherits="Default2, App_Web_5p2nsvw4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                <!-- Menu Content Place Holder -->
                 <ul>
								<li ><a href="DreamHouse.aspx">Home</a></li>
								<li><a href="about.aspx">About Us</a></li>
								<li><a href="services.aspx">Services</a></li>
								<li class="active"><a href="marketing.aspx">Marketing</a></li>
								<li><a href="contact.aspx">Contact</a></li>
								<div class="clear"></div>
					        </ul>
</asp:Content>


<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
                <!--    Content ..... -->
                <div class="content_bottom">
		         			<div class="image group marketing">
									<div class="grid images_3_of_1">
										<a href="#"><img src="../images/marketing_img1.jpg" alt=""></a>
									</div>
										<div class="grid blog-desc">
											<h4><a href="#">Lorem Ipsum is simply dummy text </a></h4>
											<p>Lorem ipsum dolor sit amet Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
											<div class="view-all"><a href="events.aspx">More Info</a></div>
									 </div>
		  				      </div>
		  				   <div class="image group marketing">
									<div class="grid images_3_of_1">
										<a href="#"><img src="../images/marketing_img2.jpg" alt=""></a>
									</div>
										<div class="grid blog-desc">
											<h4><a href="#">Duis aute irure dolor </a></h4>
											   <p>Lorem ipsum dolor sit amet Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
											<div class="view-all"><a href="events.aspx">More Info</a></div>
									 </div>
		  				      </div>
		  				   <div class="image group marketing">
									<div class="grid images_3_of_1">
										<a href="#"><img src="../images/marketing_img3.jpg" alt=""></a>
									</div>
										<div class="grid blog-desc">
											<h4><a href="#">Deserunt mollit laborum</a></h4>
											   <p>Lorem ipsum dolor sit amet Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
											<div class="view-all"><a href="events.aspx">More Info</a></div>
									 </div>
		  				      </div>
		      			 </div></asp:Content>



