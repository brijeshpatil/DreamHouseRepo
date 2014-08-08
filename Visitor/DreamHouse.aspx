<%@ page title="" language="C#" masterpagefile="~/Visitor/Visitor.master" autoeventwireup="true" inherits="_Default, App_Web_5p2nsvw4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../nivo-slider/demo/style.css" rel="stylesheet" type="text/css" />
    <link href="../nivo-slider/nivo-slider.css" rel="stylesheet" type="text/css" />
    <link href="../nivo-slider/themes/default/default.css" rel="stylesheet" type="text/css" />
    <script src="../nivo-slider/demo/scripts/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="../nivo-slider/jquery.nivo.slider.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!-- Menu ContentPlace holder -->
    <ul>
        <li class="active"><a href="DreamHouse.aspx">Home</a></li>
        <li><a href="searchproperty.aspx">Property</a></li>
        <li><a href="searchagent.aspx">Agents</a></li>
        <li><a href="about.aspx">About Us</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        <div class="clear">
        </div>
    </ul>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <!------ Slider ------------>
    <div id="wrapper" style="margin:-18px;">
        &nbsp;<div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <img src="../images/1.jpg" data-thumb="../images/1.jpg" alt="" />
                <img src="../images/2.jpg" data-thumb="../images/2.jpg" alt="" />
                <img src="../images/3.jpg" data-thumb="../images/3.jpg" alt="" data-transition="slideInLeft"/>
                <img src="../images/4.jpg" data-thumb="../images/4.jpg" alt=""/>
                <img src="../images/5.jpg" data-thumb="../images/5.jpg" alt="" />
                <img src="../images/6.jpg" data-thumb="../images/6.jpg" alt="" />
                <img src="../images/7.jpg" data-thumb="../images/7.jpg" alt="" />
                <img src="../images/8.jpg" data-thumb="../images/8.jpg" alt="" />
                <img src="../images/9.jpg" data-thumb="../images/9.jpg" alt="" />
                <img src="../images/10.jpg" data-thumb="../images/10.jpg" alt=""/>
                <img src="../images/11.jpg" data-thumb="../images/11.jpg" alt="" title="This is  of a caption" />
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>. 
            </div>
        </div>

    </div>
       
    
    <!------End Slider ------------>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <!-- Content ContentPlace Holder -->
    <div class="content_bottom">
        <h2>
            Welcome to our company</h2>
        <h3>
            Lorem Ipsum is simply dummy text of the printing atque corrupti quos dolores et
            quas molestias excepturi sint occaecati cupiditate non provident, similique sunt
            in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</h3>
        <p>
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
            voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
            occaecati cupiditate non provident.At vero eos et accusamus et iusto odio dignissimos
            ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
            et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt
            in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
        <p>
            Atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate
            non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est
            laborum et dolorum fuga.</p>
        <div class="feature_list">
            <h2>
                Featured Services</h2>
            <ul>
                <li>Duis aute irure dolor Sunt in culpa</li>
                <li>Sunt in culpa qui officia vel illum</li>
                <li>vel illum qui dolorem eum The wise</li>
                <li>The wise man therefore Lorem ipsum</li>
                <li>vel illum qui dolorem eum The wise</li>
            </ul>
        </div>
        <p>
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
            voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
            occaecati cupiditate non provident.At vero eos et accusamus et iusto odio dignissimos
            ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
            et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt
            in culpa qui officia deserunt mollitia.</p>
    </div>
</asp:Content>
