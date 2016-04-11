<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/js/select2/select2.css"/>
    <link rel="stylesheet" href="/js/select2/select2_jazz.css"/>
    <script type="text/javascript" src="/js/select2/select2.min.js"></script>
    <script type="text/javascript" src="/js/select2/select2_locale_it.js"></script>
    <script type="text/javascript">
        function reinitInput() {
            Metronic.init(); // init metronic core componets
        }
        $(document).ready(function () {
            $("#<%=ddl_ricerca.ClientID%>").select2({
                placeholder: 'Cerca per tag, categoria, artista ...',
                allowClear: true,
                multiple: true,
                minimumInputLength: 3,
                query: function (query) {
                    PageMethods.ElencoRicerca(query.term, "", NCSuccess, NCFailure);
                    function NCSuccess(result) {
                        var data = { results: [] };
                        $.each(result, function (index, item) {
                            data.results.push({ id: item.id, text: item.text });
                        });
                        query.callback(data);
                    }
                    function NCFailure(error) {
                    }
                },
                initSelection: function (element, callback) {
                    PageMethods.ElencoRicerca("", $(element).val(), NCSuccess, NCFailure);
                    function NCSuccess(result) {

                        callback(result[0]);
                    }
                    function NCFailure(error) {
                    }
                }
            });

            $("#<%=ddl_ricerca.ClientID%>").each(function () {
                $('.select2-search-choice').remove();
                $(this).on("change", function (e) {
                    PageMethods.SalvaSelect2MultipleValues(e.val, PMSuccess, PMFailure);
                })
            });

        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="div_logging" runat="server" style="overflow: initial;background: #000" class="slider dark"
         data-height-lg="550"
         data-height-md="550"
         data-height-sm="450"
         data-height-xs="450"
         data-height-xxs="550">
        <div class="video-wrap" style="height: 100%;">
            <video id="slide-video" preload="auto" loop autoplay muted>
                <asp:Literal ID="video_not_logged" runat="server"></asp:Literal>
                Your browser does not support the video tag.
            </video>
        </div>
        <div class="vertical-middle center text-shadow" style="z-index: 5">
            <div class="emphasis-title title-center nomargin">
                <h2 class="nopadding" style="font-weight: 200 font-size: 50px"><%=Lingua.CaricaLingua("lgl_index_benvenuto")%></h2>
                <h3 class="citazione">
                    <strong>Jazz Hub</strong> 
                    <%=Lingua.CaricaLingua("lgl_index_benvenuto_desc")%>
                </h3>
                <a href="ChiSiamo.aspx" class="button button-border button-white button-light button-xlarge button-rounded bottommargin-sm">Scopri di pi&uacute;</a> 
            </div>
            <a href="#" id="video-slider-audio">
                <i class="icon-mute nomargin"></i>
                <i class="icon-volume nomargin"></i>
            </a>
        </div>
        <div class="video-overlay"></div>
    </section>    
    <section id="div_logged" runat="server" style="overflow: initial; background: #000;"  class="slider slider-video dark"
         data-height-lg="550"
         data-height-md="550"
         data-height-sm="450"
         data-height-xs="450"
         data-height-xxs="550">
        <div class="clearfix video-title text-shadow">
            <div class="center container clearfix">
                <h4 class="nomargin author" data-animate="fadeInUp" data-delay="300"  data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h4>
                <h3 class="nomargin title" data-animate="fadeInUp"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                <a href="#" id="video-slider-audio" class="audio-played">
                    <i class="icon-mute nomargin"></i>
                    <i class="icon-volume nomargin"></i>
                </a>
                <a href="#" id="video-slider-play" class="video-played">
                    <i class="icon-line-play nomargin"></i>
                    <i class="icon-line-pause nomargin"></i>
                </a>
                <asp:LinkButton ID="btn_video" CssClass="btn_video" runat="server">
                    <!--<%=Lingua.CaricaLingua("lgl_index_vai_scheda")%>
                    <i class="icon-angle-right"></i>-->
                    <i class="icon-line-paper nomargin"></i>
                </asp:LinkButton>
                <span data-animate="fadeInUp" data-delay="500" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden">
                </span>
            </div>
        </div>
        <div class="video-wrap" style="height: 100%; z-index: 1">
            <video id="slide-video" preload="auto" loop autoplay>
                <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                Your browser does not support the video tag.
            </video>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding standard-portfolio home">
        
        <!-- ricerca -->
        <div class="section nomargin nopadding center">
            <section class="nomargin nopadding" style="padding: 20px 0 !important; background: #fff"  data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden">
                <div class="container clearfix">
                    <div class="main-search notopmargin">
                        <div style="margin-left: auto; margin-right: auto; float: none">
                            <input type="hidden" id="ddl_ricerca" class="form-control select2" runat="server">
                            <asp:LinkButton ID="btn_cerca" runat="server" CssClass="btn btn-default" style="border: none; margin-top: 5px;">
                                <i class="icon-search"></i>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
        <!-- Ultimi video -->
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h4 class="color"><%=Lingua.CaricaLingua("lgl_index_ultimi_video")%></h4
                <h4><i class="i-circled i-light icon-clock i-vetrina "></i></h4>
<!--
                <div class="divider divider-rounded divider-center divider-custom">
                    <i class="icon-clock" style="background-color: rgba(0,0,0,.1)"></i>
                </div>
-->
                <div id="oc-portfolio" class="owl-carousel portfolio-carousel">
                    <asp:Repeater ID="rpt_video_random" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <div class="oc-item">
                                <article class="iportfolio">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <div class="goto-video"><i class="icon-line-play"></i></div>
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                        <div class="portfolio-desc">
                                            <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                            <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        
        <!-- Editor's pick -->
        <div class="section nomargin alt center">
            <div class="container clearfix">
                <h4 class="color"><%=Lingua.CaricaLingua("lgl_index_scelti")%></h4>
                <h4><i class="i-circled i-light icon-star i-vetrina nomargin"></i></h4>
<!--
                <div class="divider divider-rounded divider-center divider-custom">
                    <i class="icon-star" style="background-color: rgba(0,0,0,.1)"></i>
                </div>
-->
                <div id="portfolio" class="portfolio portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item" >
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <div class="goto-video"><i class="icon-line-play"></i></div>
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
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
        
        <!-- Expo -->
        <div class="section nomargin alt center" id="div_like_expo" runat="server">
            <div class="container clearfix ">
                <h4 class="color"><%=Lingua.CaricaLingua("lgl_index_votati_expo")%></h4>
                <h4><i class="i-circled i-light icon-like i-vetrina nomargin"></i></h4>
                <!--
                <div class="divider divider-rounded divider-center divider-custom">
                <i class="icon-facetime-video" style="background-color: rgba(0,0,0,.1)"></i>
                <i class="icon-chevron-right" style="background-color: rgba(0,0,0,.025)"></i>
                <i class="icon-like" style="background-color: rgba(0,0,0,.1)"></i>
                </div>
                -->
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video_expo" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item">
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <div class="goto-video"><i class="icon-line-play"></i></div>
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
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

        <!-- Guest  -->
        <div class="section nomargin alt center" id="div_like_guest" runat="server">
            <div class="container clearfix ">
                <h4 class="color"><%=Lingua.CaricaLingua("lgl_index_votati_guest")%></h4>
                <h4><i class="i-circled i-light icon-like i-vetrina nomargin"></i></h4>
<!--                <h4><%=Lingua.CaricaLingua("lgl_index_votati_guest")%></h4>-->
<!--
                <div class="divider divider-rounded divider-center divider-custom">
                    <i class="icon-coffee2" style="background-color:  rgba(0,0,0,.1)"></i>
                    <i class="icon-chevron-right" style="background-color:  rgba(0,0,0,.025)"></i>
                    <i class="icon-like" style="background-color:  rgba(0,0,0,.1)"></i>
                </div>
-->
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video_guest" runat="server" OnItemDataBound="rpt_video_ItemDataBound"
                        OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item" >
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <div class="goto-video"><i class="icon-line-play"></i></div>
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
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

        <!-- Visitatori -->
        <div class="section nomargin alt center" id="div_like_visi" runat="server">
            <div class="container clearfix ">
                <h4 class="color"><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h4>
                <h4><i class="i-circled i-small i-light icon-like i-vetrina hidden"></i></h4>
<!--
                <div class="divider divider-rounded divider-center divider-custom">
                    <i class="icon-eye-open" style="background-color: rgba(0,0,0,.1)"></i>
                    <i class="icon-chevron-right" style="background-color: rgba(0,0,0,.025)"></i>
                    <i class="icon-like" style="background-color: rgba(0,0,0,.1)"></i>
                </div>
-->
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video_visi" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item">
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <div class="goto-video"><i class="icon-line-play"></i></div>
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
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
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
        jQuery(window).load(function () {
            
            //$(".portfolio-first").find(".portfolio-item:first-child").addClass("wide");
            
        });

        $(document).ready(function () {

            //alert($(".portfolio-first").find(".portfolio-item:first-child").find(".portfolio-desc")); //portfolio-desc
            $(".portfolio-first").find(".portfolio-item:first-child").addClass("wide");

            var $container = $('.portfolio');

            $container.isotope({
                transitionDuration: '0.25s',
                masonry: {
                    columnWidth: $container.find('.portfolio-item:not(.wide)')[0]
                }
            });

            var $container_expo = $('.portfolio-first');

            $container_expo.isotope({
                transitionDuration: '0.25s',
                masonry: {
                    columnWidth: $container_expo.find('.portfolio-item:not(.wide)')[0]
                }
            });

            $(window).resize(function () {
                $container.isotope('layout');
                $container_expo.isotope('layout');
            });

            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

            var ocPortfolio = $("#oc-portfolio");

            ocPortfolio.owlCarousel({
                margin: 15,
                nav: true,
                navText: ['<i class="icon-angle-left"></i>', '<i class="icon-angle-right"></i>'],
                autoplay: false,
                autoplayHoverPause: true,
                dots: false,
                autoHeight: false,
                responsive: {
                    0: { items: 1 },
                    600: { items: 2 },
                    1000: { items: 4 },
                    1200: { items: 4 }
                }
            });


        });

        function endRequestHandler(sender, args) {

        }
        
        $('#video-slider-audio').on('click', function (e) {
            e.preventDefault();

            if ($(this).hasClass('audio-played')) {
                $('video').prop('muted', true);
            } else {
                $('video').prop('muted', false);
            }

            $(this).toggleClass('audio-played');
        });

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