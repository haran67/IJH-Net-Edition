    <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #video-slider-play {
            /*position: absolute;
            left: 50%;
            top: auto;
            bottom: 30px;
            margin-left: -24px;*/
            /*width: 48px;
            height: 48px;
            line-height: 48px;
            border-radius: 50%;
            background-color: rgba(255,255,255,0.2);
            color: #FFF;
            font-size: 18px;
            text-align: center;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.1);
            z-index: 8;*/
            display: inline-block;
        }

        #video-slider-play i:nth-of-type(1) {
            position: relative;
            left: 2px;
        }

        #video-slider-play i:nth-of-type(2),
        #video-slider-play.video-played i:nth-of-type(1) { display: none; }

        #video-slider-play.video-played i:nth-of-type(2) { display: inline-block; }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
            
    <section id="div_logging" runat="server" class="slider slider-parallax dark" style="background: url('images/custom/patch-wallpaper.jpg'); background-size: cover; background-position: center center" data-height-lg="550" data-height-md="550" data-height-sm="400" data-height-xs="400" data-height-xxs="400">
        <div class="container clearfix">
            <div class="vertical-middle center">
                <div class="emphasis-title title-center nomargin col-padding">
                    <h2 class="nopadding text-shadow"><strong><%=Lingua.CaricaLingua("lgl_index_benvenuto")%></strong></h2>
                    <h3 style="font-weight: normal"><strong>Jazz Hub</strong> &egrave; una rete sociale dedicata alla musica Jazz e nasce per mettere in contatto musicisti, affetti ai lavori e appassionati connessi in remoto da tutto il mondo.</h3>
                    <div class="divider divider-rounded divider-center topmargin-sm"><i class="icon-arrow-down2"></i></div>
                    <div id="div_registrati" runat="server">
                        <a href="login.aspx" class="button button-rounded  button-xlarge nobottommargin"><%=Lingua.CaricaLingua("lgl_index_accedi")%></a> 
                        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                    </div>
                </div>

            </div>
        </div>
    </section>    
        
    <section id="div_logged" runat="server" class="page-title page-title-parallax page-title-dark page-title-video" style="background-color: #000;">
        
        <div class="video-wrap" style="height: 100%;">
            <video id="slide-video" poster="images/custom/patch-wallpaper.jpg" preload="auto" loop autoplay controls>
                <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                Your browser does not support the video tag.
            </video>
            <div class="video-overlay" style="background: url('images/custom/patch-wallpaper-lines.png') no-repeat; background-size: cover" /></div>
        </div>
        <div class="container center clearfix">
            <span data-animate="fadeInUp" data-delay="300"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
            <h1 data-animate="fadeInUp"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h1>
            <a href="#" id="video-slider-play" class="button button-border button-white button-light button-small button-rounded tleft video-played">
                <i class="icon-line-play nomargin"></i>
                <i class="icon-line-pause nomargin"></i>
            </a>
            <asp:LinkButton ID="btn_video" runat="server" CssClass="button button-border button-white button-light button-small button-rounded tleft ">
                <!--<%=Lingua.CaricaLingua("lgl_index_vai_scheda")%>
                <i class="icon-angle-right"></i>-->
                    <i class="icon-line-paper nomargin"></i>
            </asp:LinkButton>
        </div>
    </section>
        <script>
            jQuery(document).ready(function($){
                $('#video-slider-play').on('click', function(e){
                e.preventDefault();

                if( $(this).hasClass('video-played') ) {
                $('#slide-video').get(0).pause();
                } else {
                $('#slide-video').get(0).play();
                }

                $(this).toggleClass('video-played');
                });
            });
        </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="section nomargin" style="background-color: #fffbf1">
            <h3 class="title center"><%=Lingua.CaricaLingua("lgl_index_scelti")%></h3>
            <div class="container clearfix ">
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item">
                                <div class="portfolio-image">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
                                </div>
                                <div class="portfolio-desc" style="background-color: #fff; padding: 15px;">
                                    <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                    <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="section nomargin nobottompadding">
            <h3 class="title center"><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h3>
            <div class="container clearfix " id="div_like_visi" runat="server">
                <div class="oc-item">
                    <asp:Repeater ID="rpt_video_visi" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <div class="iportfolio">
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
        <div class="section nomargin nobottompadding" style="background-color: #fffbf1">
            <h3 class="title center"><%=Lingua.CaricaLingua("lgl_index_votati_expo")%></h3>
            <div class="container clearfix " id="div_like_expo" runat="server">
                <div id="portfolio" class="portfolio-4 clearfix">
                    <asp:Repeater ID="rpt_video_expo" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item">
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
        <div class="section nomargin">
            <h3 class="title center"><%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
            <div class="container clearfix ">
                <div id="portfolio" class="portfolio-3 clearfix">
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