    <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="div_logging" runat="server" style="overflow: initial" class="slider dark patch-wallpaper" data-height-lg="600" data-height-md="600" data-height-sm="450" data-height-xs="450" data-height-xxs="550">
        <div class="container clearfix">
            <div class="vertical-middle center">
                <div class="emphasis-title title-center nomargin">
                    <h2 class="nopadding text-shadow"><strong><%=Lingua.CaricaLingua("lgl_index_benvenuto")%></strong></h2>
                    <h3 class="citazione" style="font-weight: normal">
                        <strong>Jazz Hub</strong> 
                        <%=Lingua.CaricaLingua("lgl_index_benvenuto_desc")%>
                    </h3>
                    <a href="ChiSiamo.aspx" class="button button-border button-white button-light button-xlarge button-rounded bottommargin-sm">Scopri di pi&uacute;</a> 
<!--
                    <div id="div_registrati" runat="server">
                        <a href="login.aspx" class="button button-rounded button-green button-small nobottommargin"><%=Lingua.CaricaLingua("lgl_index_accedi")%></a> 
                        <a href="register.aspx" class="button button-rounded button-red button-small nobottommargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                    </div>
-->
                </div>
                <div class="main-search box-shadow-custom" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="hidden" data-class-xxs="hidden">
                    <div class="input-group input-group-lg">
                        <div class="input-group-btn dropup">
                            <button type="button" class="btn btn-default dropdown-toggle " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categorie&nbsp;<span class="caret"></span> <span class="sr-only">Toggle Dropdown</span> </button>
                            <ul class="dropdown-menu dropdown-menu-left">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <div class="input-group-btn dropup">
                            <button type="button" class="btn btn-default dropdown-toggle noradius" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tags&nbsp;<span class="caret"></span> <span class="sr-only">Toggle Dropdown</span> </button>
                            <ul class="dropdown-menu dropdown-menu-left">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <input type="text" class="form-control" aria-label="Text input with segmented button dropdown" placeholder="nome, strumento...">
                        <div class="input-group-btn ">
                            <button type="button" class="btn btn-default"><i class="icon-search"></i></button>
                        </div>
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
            <div class="container clearfix ">
                <h4><%=Lingua.CaricaLingua("lgl_index_scelti")%></h4>
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
            <div class="container clearfix ">
                <h4><%=Lingua.CaricaLingua("lgl_index_votati_guest")%></h4>
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
            <div class="container clearfix ">
                <h4><%=Lingua.CaricaLingua("lgl_index_votati_expo")%></h4>
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
            <div class="container clearfix ">
                <h4><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h4>
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
            <div class="container clearfix ">
                <h4><%=Lingua.CaricaLingua("lgl_index_ultimi_video")%></h4>
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