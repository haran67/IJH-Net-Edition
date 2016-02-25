    <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="div_logging" runat="server" class="slider dark patch-wallpaper" data-height-lg="550" data-height-md="550" data-height-sm="400" data-height-xs="400" data-height-xxs="500">
        <div class="container clearfix">
            <div class="vertical-middle center">
                <div class="emphasis-title title-center nomargin">
                    <h2 class="nopadding text-shadow"><strong><%=Lingua.CaricaLingua("lgl_index_benvenuto")%></strong></h2>
                    <h3 style="font-weight: normal">
                        <strong>Jazz Hub</strong> 
                        <%=Lingua.CaricaLingua("lgl_index_benvenuto_desc")%>
                    </h3>
                    <div class="divider divider-rounded divider-center topmargin-sm"><i class="icon-arrow-down2"></i></div>
                    <div id="div_registrati" runat="server">
                        <a href="login.aspx" class="button button-rounded button-green button-xlarge nobottommargin"><%=Lingua.CaricaLingua("lgl_index_accedi")%></a> 
                        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                    </div>
                </div>

            </div>
        </div>
    </section>    
        
    <section id="div_logged" runat="server" class="page-title page-title-dark page-title-video page-title-center patch-wallpaper" data-height-lg="450" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="250">
        <div class="video-wrap" style="height: 100%;">
            <video id="slide-video" preload="auto" loop >
                <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                Your browser does not support the video tag.
            </video>
        </div>
        <div class="container vertical-middle clearfix">
            <span data-animate="fadeInUp" data-delay="300"  data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
            <h1 data-animate="fadeInUp"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h1>
            <span data-animate="fadeInUp" data-delay="500" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden">
            <a href="#" id="video-slider-play"  class="button button-border button-white button-light button-small button-rounded tleft">
                <i class="icon-line-play nomargin"></i>
                <i class="icon-line-pause nomargin"></i>
            </a>
            <asp:LinkButton ID="btn_video" runat="server" CssClass="button button-border button-white button-light button-small button-rounded tleft ">
                <!--<%=Lingua.CaricaLingua("lgl_index_vai_scheda")%>
                <i class="icon-angle-right"></i>-->
                    <i class="icon-line-paper nomargin"></i>
            </asp:LinkButton>
            </span>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding standard-portfolio">
        <div class="section nomargin alt box-shadow-custom">
            <h3 class="center"><%=Lingua.CaricaLingua("lgl_index_scelti")%></h3>
            <div class="container clearfix ">
                <div id="portfolio" class="portfolio portfolio-full portfolio-masonry mixed-masonry clearfix">
                    <asp:Repeater ID="rpt_video" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item" >
                                <div style="margin: 5px;" class="box-shadow-custom">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                    </div>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="section nomargin box-shadow-custom" id="div_like_guest" runat="server">
            <h3 class="center"><%=Lingua.CaricaLingua("lgl_index_votati_guest")%></h3>
            <div class="container clearfix ">
                <div id="portfolio" class="portfolio portfolio-full portfolio-masonry mixed-masonry clearfix">
                    <asp:Repeater ID="rpt_video_guest" runat="server" OnItemDataBound="rpt_video_ItemDataBound"
                        OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item" >
                                <div style="margin: 5px;" class="box-shadow-custom">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                    </div>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="section nomargin alt box-shadow-custom" id="div_like_expo" runat="server">
            <h3 class="center"><%=Lingua.CaricaLingua("lgl_index_votati_expo")%></h3>
            <div class="container clearfix ">
                <div id="portfolio" class="portfolio portfolio-full portfolio-masonry mixed-masonry clearfix">
                    <asp:Repeater ID="rpt_video_expo" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item" >
                                <div style="margin: 5px;" class="box-shadow-custom">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                    </div>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="section nomargin box-shadow-custom" id="div_like_visi" runat="server">
            <h3 class="center"><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h3>
            <div class="container clearfix ">
                <div id="portfolio" class="portfolio portfolio-4 portfolio-masonry clearfix">
                    <asp:Repeater ID="rpt_video_visi" runat="server" OnItemDataBound="rpt_video_ItemDataBound"
                        OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <div class="oc-item">
                                <article class="iportfolio">
                                    <div class="portfolio-image patch-placeholder">
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
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="section nomargin ">
            <h3 class="center"><%=Lingua.CaricaLingua("lgl_index_ultimi_video")%></h3>
            <div class="container clearfix ">
                <div id="oc-portfolio" class="owl-carousel portfolio-carousel">
                    <asp:Repeater ID="rpt_video_random" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <div class="oc-item">
                                <article class="iportfolio">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc" style="background-color: #fff; padding: 15px;">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                    </div>
                                </article>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
        jQuery(window).load(function () {
            
            var $container = $('.portfolio');

            $container.isotope({
                transitionDuration: '0.25s',
                masonry: {
                    columnWidth: $container.find('.portfolio-item:not(.wide)')[0]
                }
            });


            $(window).resize(function () {
                $container.isotope('layout');
            });
            
        });
    
        $(document).ready(function () {

            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

            var ocPortfolio = $("#oc-portfolio");

            ocPortfolio.owlCarousel({
                margin: 15,
                nav: true,
                navText: ['<i class="icon-angle-left"></i>','<i class="icon-angle-right"></i>'],
                autoplay: false,
                autoplayHoverPause: true,
                dots: false,
                autoHeight: false,
                responsive:{
                    0:{ items:1 },
                    600:{ items:3 },
                    1000:{ items:4 },
                    1200:{ items:4 }
                }
            });
            
            $(".portfolio").find(".portfolio-item:first-child").addClass("wide");
        });

        function endRequestHandler(sender, args) {

        }

        $('#video-slider-play').on('click', function (e) {
            e.preventDefault();

            if ($(this).hasClass('video-played')) {
                $('#slide-video').get(0).pause();
            } else {
                $('#slide-video').get(0).play();
            }

            $(this).toggleClass('video-played');
        });
        

    </script>
</asp:Content>