<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="div_logging" runat="server" class="page-title page-title-parallax page-title-dark page-title-video" style="background-color: #000;">
            <div class="video-wrap" style="height: 100%;">
                <video poster="images/custom/sfondo.jpg" preload="auto" loop autoplay muted>
                    <source src='images/videos/header-video.mp4' type='video/mp4' />
                    <source src='images/videos/header-video.webm' type='video/webm' />
                </video>
            </div>
            <div class="container clearfix">
                <div class="col_full dark">
                    <div class="panel-body" style="padding: 0px 0;">
                        <div class="emphasis-title title-center">
                            <h2 class="nopadding text-shadow">
                                <strong><%=Lingua.CaricaLingua("lgl_index_benvenuto")%></strong>
                                </h2>
                            <div class="divider divider-rounded divider-center" style="margin: 10px 0;">
                                <i class="icon-arrow-down2"></i>
                            </div>
                            <div id="div_registrati" runat="server">
                                <a href="login.aspx" class="button button-rounded  button-xlarge nobottommargin"><%=Lingua.CaricaLingua("lgl_index_accedi")%></a> 
                                <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <section id="div_logged" runat="server" class="page-title page-title-parallax page-title-dark page-title-video" style="background-color: #000;">
        <div class="video-wrap" style="height: 100%;">
            <video poster="images/custom/sfondo.jpg" preload="auto" loop autoplay>
                <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                Your browser does not support the video tag.
            </video>
        </div>
        <div class="container clearfix">
            <span data-animate="fadeInUp" data-delay="300"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
            <h1 data-animate="fadeInUp"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h1>
            <asp:LinkButton ID="btn_video" runat="server" style="margin: 20px 0 0 0;" CssClass="button button-border button-white button-light button-rounded tleft ">
                <%=Lingua.CaricaLingua("lgl_index_vai_scheda")%>
                <i class="icon-angle-right"></i>
            </asp:LinkButton>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="content-wrap nopadding">
            <div class="section notopmargin center">
                <div class="container clearfix">
                    <h1>Spazio banner pubblicitario/i</h1>
                </div>
            </div>
            <div class="container clearfix" >
                <div class="postcontent clearfix ">
                    <div class="fancy-title title-border">
                        <h3><%=Lingua.CaricaLingua("lgl_index_scelti")%></h3>
                    </div>
                    <div id="portfolio" class="portfolio-3 clearfix">
                        <asp:Repeater ID="rpt_video" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                            <ItemTemplate>
                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image">
                                        <asp:Image ID="img_copertina" runat="server"/>
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <div class="portfolio-overlay">
                                                <div class="portfolio-desc">
                                                    <span>
                                                        <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                                                    </span>
                                                    <h3>
                                                        <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                                    </h3>
                                                </div>
                                            </div>
                                        </asp:LinkButton>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="topmargin clearfix" id="div_like_visi" runat="server">
                        <div class="fancy-title title-border">
                            <h3><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h3>
                        </div>
                        <div id="portfolio" class="portfolio-4 clearfix">
                            <asp:Repeater ID="rpt_video_visi" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                                <ItemTemplate>
                                    <article class="portfolio-item pf-media pf-icons">
                                        <div class="portfolio-image">
                                            <asp:Image ID="img_copertina" runat="server"/>
                                            <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                                <div class="portfolio-overlay">
                                                    <div class="portfolio-desc">
                                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                                        <h3>
                                                            <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                                        </h3>
                                                    </div>
                                                </div>
                                            </asp:LinkButton>
                                        </div>
                                    </article>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="topmargin clearfix" id="div_like_expo" runat="server">
                        <div class="fancy-title title-border">
                            <h3><%=Lingua.CaricaLingua("lgl_index_votati_expo")%></h3>
                        </div>
                        <div id="portfolio" class="portfolio-4 clearfix">
                        <asp:Repeater ID="rpt_video_expo" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                            <ItemTemplate>
                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image">
                                        <asp:Image ID="img_copertina" runat="server"/>
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <div class="portfolio-overlay">
                                                <div class="portfolio-desc">
                                                    <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                                    <h3>
                                                        <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                                    </h3>
                                                </div>
                                            </div>
                                        </asp:LinkButton>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    </div>
                    <div class="topmargin clearfix">
                        <div class="fancy-title title-border">
                            <h3><%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
                        </div>
                        <div id="portfolio" class="portfolio-4 clearfix">
                            <asp:Repeater ID="rpt_video_random" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                                <ItemTemplate>
                                    <article class="portfolio-item pf-media pf-icons">
                                        <div class="portfolio-image">
                                            <asp:Image ID="img_copertina" runat="server"/>
                                            <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                                <div class="portfolio-overlay">
                                                    <div class="portfolio-desc">
                                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                                        <h3>
                                                            <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                                        </h3>
                                                    </div>
                                                </div>
                                            </asp:LinkButton>
                                        </div>
                                    </article>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <div class="sidebar col_last">
                    <div class="sidebar-widgets-wrap">

                        <div class="widget clearfix">
                            <div class="fancy-title title-border">
                                <h4>Commenti recenti</h4>
                            </div>
                            <div id="post-list-footer">

                                <div class="spost clearfix">
                                    <div class="entry-image">
                                        <a href="#" class="nobg"><img src="images/ui-sam.jpg" alt=""></a>
                                    </div>
                                    <div class="entry-c">
                                        <div class="entry-title">
                                            <h4><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h4>
                                        </div>
                                        <ul class="entry-meta">
                                            <li>10th July 2014</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="spost clearfix">
                                    <div class="entry-image">
                                        <a href="#" class="nobg"><img src="images/ui-sam.jpg" alt=""></a>
                                    </div>
                                    <div class="entry-c">
                                        <div class="entry-title">
                                            <h4><a href="#">Elit Assumenda vel amet dolorum quasi</a></h4>
                                        </div>
                                        <ul class="entry-meta">
                                            <li>10th July 2014</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="spost clearfix">
                                    <div class="entry-image">
                                        <a href="#" class="nobg"><img src="images/ui-sam.jpg" alt=""></a>
                                    </div>
                                    <div class="entry-c">
                                        <div class="entry-title">
                                            <h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
                                        </div>
                                        <ul class="entry-meta">
                                            <li>10th July 2014</li>
                                        </ul>
                                    </div>
                                </div>

                            </div>

                            <div class="fancy-title title-border topmargin">
                                <h4>Hanno detto di noi</h4>
                            </div>
                            <div class="fslider testimonial noborder nopadding noshadow" data-animation="slide" data-arrows="false">
                                <div class="flexslider">

                                    <div class="flex-viewport" style="overflow: hidden; position: relative;"><div class="slider-wrap" style="width: 1000%; -webkit-transition: 0s; transition: 0s; transform: translate3d(-240px, 0px, 0px);"><div class="slide clone" aria-hidden="true" style="width: 240px; float: left; display: block;">
                                        <div class="testi-image">
                                            <a href="#"><img src="images/ui-sam.jpg" alt="Customer Testimonails" draggable="false"></a>
                                        </div>
                                        <div class="testi-content">
                                            <p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
                                            <div class="testi-meta">
                                                John Doe
                                                <span>XYZ Inc.</span>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="slide flex-active-slide" style="width: 240px; float: left; display: block;">
                                            <div class="testi-image">
                                                <a href="#"><img src="images/ui-sam.jpg" alt="Customer Testimonails" draggable="false"></a>
                                            </div>
                                            <div class="testi-content">
                                                <p>Similique fugit repellendus expedita excepturi iure perferendis provident quia eaque. Repellendus, vero numquam?</p>
                                                <div class="testi-meta">
                                                    Steve Jobs
                                                    <span>Apple Inc.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide" style="width: 240px; float: left; display: block;">
                                            <div class="testi-image">
                                                <a href="#"><img src="images/ui-sam.jpg" alt="Customer Testimonails" draggable="false"></a>
                                            </div>
                                            <div class="testi-content">
                                                <p>Natus voluptatum enim quod necessitatibus quis expedita harum provident eos obcaecati id culpa corporis molestias.</p>
                                                <div class="testi-meta">
                                                    Collis Ta'eed
                                                    <span>Envato Inc.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide" style="width: 240px; float: left; display: block;">
                                            <div class="testi-image">
                                                <a href="#"><img src="images/testimonials/1.jpg" alt="Customer Testimonails" draggable="false"></a>
                                            </div>
                                            <div class="testi-content">
                                                <p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo rerum!</p>
                                                <div class="testi-meta">
                                                    John Doe
                                                    <span>XYZ Inc.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide clone" style="width: 240px; float: left; display: block;" aria-hidden="true">
                                            <div class="testi-image">
                                                <a href="#"><img src="images/ui-sam.jpg" alt="Customer Testimonails" draggable="false"></a>
                                            </div>
                                            <div class="testi-content">
                                                <p>Similique fugit repellendus expedita excepturi iure perferendis provident quia eaque. Repellendus, vero numquam?</p>
                                                <div class="testi-meta">
                                                    Steve Jobs
                                                    <span>Apple Inc.</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <ol class="flex-control-nav flex-control-paging"><li data-animate="zoomIn" data-delay="0" class="zoomIn animated"><a class="flex-active">1</a></li><li data-animate="zoomIn" data-delay="200" class="zoomIn animated"><a class="">2</a></li><li data-animate="zoomIn" data-delay="400" class="zoomIn animated"><a class="">3</a></li></ol></div>
                            </div>
                            <div class="fancy-title title-border topmargin">
                                <h4>Ultimi utenti</h4>
                            </div>
                            <div id="instagram-photos" class="instagram-photos masonry-thumbs" data-user="269801886" data-count="16" data-type="user" style="margin-right: -1px; position: relative; height: 240px;"><a href="https://www.instagram.com/p/_I5PBJnX1s/" style="width: 60px; position: absolute; left: 0px; top: 0px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12356589_1027304830675132_2041072854_n.jpg"></a><a href="https://www.instagram.com/p/-3WqnQnX_y/" style="width: 60px; position: absolute; left: 60px; top: 0px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12292697_1664140483871521_836837911_n.jpg"></a><a href="https://www.instagram.com/p/-2_PQ0nX2M/" style="width: 60px; position: absolute; left: 120px; top: 0px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12292630_924904394246007_1805484569_n.jpg"></a><a href="https://www.instagram.com/p/-ikuJXnX4k/" style="width: 60px; position: absolute; left: 180px; top: 0px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12224254_170251249995219_2063484875_n.jpg"></a><a href="https://www.instagram.com/p/-cxK9wnX6o/" style="width: 60px; position: absolute; left: 0px; top: 60px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/c180.0.720.720/12277426_1504120886581951_1044581002_n.jpg"></a><a href="https://www.instagram.com/p/-Nn5AcHX39/" style="width: 60px; position: absolute; left: 60px; top: 60px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/c0.135.1080.1080/11909174_1700213153558910_1799989806_n.jpg"></a><a href="https://www.instagram.com/p/-AmQ-rnX-t/" style="width: 60px; position: absolute; left: 120px; top: 60px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/11326072_195774197424583_376022732_n.jpg"></a><a href="https://www.instagram.com/p/97YljHnX32/" style="width: 60px; position: absolute; left: 180px; top: 60px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12224678_544488875706131_1329499189_n.jpg"></a><a href="https://www.instagram.com/p/9ZhHjFnXzY/" style="width: 60px; position: absolute; left: 0px; top: 120px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/1538441_1518650185119077_1923471525_n.jpg"></a><a href="https://www.instagram.com/p/9XgVL1nX8I/" style="width: 60px; position: absolute; left: 60px; top: 120px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12142689_1640953026187545_460481289_n.jpg"></a><a href="https://www.instagram.com/p/9VKTRHHX0S/" style="width: 60px; position: absolute; left: 120px; top: 120px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/1889225_501597656666532_2010998694_n.jpg"></a><a href="https://www.instagram.com/p/82uvOrnXyW/" style="width: 60px; position: absolute; left: 180px; top: 120px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/c123.0.557.557/12093833_145423525812550_489828294_n.jpg"></a><a href="https://www.instagram.com/p/81mqlsnX49/" style="width: 60px; position: absolute; left: 0px; top: 180px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12132687_1670031926554031_1806654007_n.jpg"></a><a href="https://www.instagram.com/p/81ijEdHXyc/" style="width: 60px; position: absolute; left: 60px; top: 180px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/c0.100.800.800/12071222_899769890071108_1684621400_n.jpg"></a><a href="https://www.instagram.com/p/8misH-HXxY/" style="width: 60px; position: absolute; left: 120px; top: 180px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/c234.0.611.611/12107505_440623172810060_933869333_n.jpg"></a><a href="https://www.instagram.com/p/8SZ2nRHX8P/" style="width: 60px; position: absolute; left: 180px; top: 180px;"><img src="https://scontent.cdninstagram.com/t51.2885-15/s150x150/e35/12071188_1048110635212867_194508648_n.jpg"></a></div>
                        </div>
                        <div class="widget quick-contact-widget clearfix">
                            <div class="fancy-title title-border">
                                <h4>Quick contact</h4>
                            </div>
                            <div id="quick-contact-form-result" data-notify-type="success" data-notify-msg="&lt;i class=icon-ok-sign&gt;&lt;/i&gt; Message Sent Successfully!"></div>
                            <form id="quick-contact-form" name="quick-contact-form" action="include/quickcontact.php" method="post" class="quick-contact-form nobottommargin" novalidate="novalidate">
                                <div class="form-process"></div>

                                <input type="text" class="required sm-form-control input-block-level" id="quick-contact-form-name" name="quick-contact-form-name" value="" placeholder="Full Name" aria-required="true">
                                <input type="text" class="required sm-form-control email input-block-level" id="quick-contact-form-email" name="quick-contact-form-email" value="" placeholder="Email Address" aria-required="true">
                                <textarea class="required sm-form-control input-block-level short-textarea" id="quick-contact-form-message" name="quick-contact-form-message" rows="4" cols="30" placeholder="Message" aria-required="true"></textarea>
                                <input type="text" class="hidden" id="quick-contact-form-botcheck" name="quick-contact-form-botcheck" value="">
                                <button type="submit" id="quick-contact-form-submit" name="quick-contact-form-submit" class="button button-small button-3d nomargin" value="submit">Send Email</button>
                            </form>

                            <script type="text/javascript">

                                $("#quick-contact-form").validate({
                                    submitHandler: function(form) {
                                        $(form).find('.form-process').fadeIn();
                                        $(form).ajaxSubmit({
                                            target: '#quick-contact-form-result',
                                            success: function() {
                                                $(form).find('.form-process').fadeOut();
                                                $(form).find('.sm-form-control').val('');
                                                $('#quick-contact-form-result').attr('data-notify-msg', $('#quick-contact-form-result').html()).html('');
                                                SEMICOLON.widget.notifications($('#quick-contact-form-result'));
                                            }
                                        });
                                    }
                                });

                            </script>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <!-- Portfolio Script ============================================= -->
    <script type="text/javascript">
        jQuery(window).load(function () {

            var $container = $('#portfolio');

            $container.isotope({
                transitionDuration: '0.65s'
            });

            $('#portfolio-filter a').click(function () {
                $('#portfolio-filter li').removeClass('activeFilter');
                $(this).parent('li').addClass('activeFilter');
                var selector = $(this).attr('data-filter');
                $container.isotope({
                    filter: selector
                });
                return false;
            });

            $('#portfolio-shuffle').click(function () {
                $container.isotope('updateSortData').isotope({
                    sortBy: 'random'
                });
            });

            $(window).resize(function () {
                $container.isotope('layout');
            });

        });
    </script>
    <!-- Portfolio Script End -->
    <script type="text/javascript">
    
    $(document).ready(function () {

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

    });

    function endRequestHandler(sender, args) {

    }

</script>
</asp:Content>