<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div  id="div_logging" runat="server">
        <section id="page-title" class="page-title-parallax page-title-dark page-title-video" style="background-color: #000;">
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
    </div>
        <section id="page-title" class="page-title-parallax page-title-dark page-title-video" style="background-color: #000;">
    <div id="div_logged" runat="server">
            <div class="video-wrap" style="height: 100%;">
                <video poster="images/custom/sfondo.jpg" preload="auto" loop autoplay muted>
                    <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                    Your browser does not support the video tag.
                </video>
            </div>
            <div class="container clearfix">
                <h1 data-animate="fadeInUp"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h1>
                <span data-animate="fadeInUp" data-delay="300"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                <asp:LinkButton ID="btn_video" runat="server" CssClass="button button-border nomargin  button-white button-light button-large button-rounded tleft ">
                    <%=Lingua.CaricaLingua("lgl_index_vai_scheda")%>
                    <i class="icon-angle-right"></i>
                </asp:LinkButton>
            </div>
        </div>
    </div>
    <!--<section id="slider" class="slider-parallax revslider-wrap clearfix">

        <div class="tp-banner-container" >
            <div class="tp-banner" >
                <ul> 
                    <li data-transition="fade" class="dark" data-transition="zoomout" data-slotamount="1" data-masterspeed="1500" data-thumb="images/slider/rev/bg2-thumb.jpg"  data-saveperformance="off"  data-title="Italian jazz Hub Highlight">
                        <img src="images/custom/sfondo.jpg"  alt="bg"  data-bgposition="left bottom" data-lazyload="images/custom/sfondo.jpg" data-bgposition="center top" data-scale="cover" data-bgrepeat="no-repeat">

                        <div class="tp-caption customin"
                             data-x="0"
                             data-y="100"
                             data-customin="x:0;y:0;z:0;rotationZ:0;scaleX:0.6;scaleY:0.6;skewX:0;skewY:0;s:850;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                             data-speed="850"
                             data-start="1200"
                             data-easing="easeOutQuad"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.1"
                             data-endspeed="1000"
                             data-endeasing="Power4.easeIn"
                             style='background-color: rgba(0,0,0,.75);width:600px;height:400px;border: none !important;'>
                                
                        </div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
                             data-x="675"
                             data-y="175"
                             data-customin="x:140;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
                             data-speed="800"
                             data-start="1000"
                             data-easing="easeOutQuad"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.1"
                             data-endspeed="1000"
                             data-endeasing="Power4.easeIn" style="white-space: nowrap;"></div>

                        <div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
                             data-x="672"
                             data-y="220"
                             data-customin="x:140;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
                             data-speed="800"
                             data-start="1200"
                             data-easing="easeOutQuad"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.1"
                             data-endspeed="1000"
                             data-endeasing="Power4.easeIn"></div>


                        <div class="tp-caption customin ltl tp-resizeme"
                             data-x="675"
                             data-y="370"
                             data-customin="x:140;y:0;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
                             data-speed="800"
                             data-start="1550"
                             data-easing="easeOutQuad"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.1"
                             data-endspeed="1000"
                             data-endeasing="Power4.easeIn">
                        </div>

                    </li>
                </ul>
            </div>
        </div>


    </section>-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="section nomarginbottom nopadding parallax">
            <div class="container clearfix ">
                <div class="fancy-title title-border title-center">
                    <h3><%=Lingua.CaricaLingua("lgl_index_scelti")%></h3>
                </div>
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item pf-media pf-icons">
                                <div class="portfolio-image" style="background-color: #222;">
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
            </div>
        </div>
        <div class="section nomarginbottom nopadding parallax">
            <div class="container clearfix " id="div_like_visi" runat="server">
                <div class="fancy-title title-border title-center">
                    <h3><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h3>
                </div>
                <div id="portfolio" class="portfolio-6 clearfix">
                    <asp:Repeater ID="rpt_video_visi" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item pf-media pf-icons">
                                <div class="portfolio-image" style="background-color: #222;">
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
        <div class="section nomarginbottom nopadding parallax">
            <div class="container clearfix " id="div_like_expo" runat="server">
                <div class="fancy-title title-border title-center">
                    <h3><%=Lingua.CaricaLingua("lgl_index_votati_expo")%></h3>
                </div>
                <div id="portfolio" class="portfolio-6 clearfix">
                    <asp:Repeater ID="rpt_video_expo" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item pf-media pf-icons">
                                <div class="portfolio-image" style="background-color: #222;">
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
        <div class="section nomarginbottom nopadding parallax">
            <div class="container clearfix ">
                <div class="fancy-title title-border title-center">
                    <h3><%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
                </div>
                <div id="portfolio" class="portfolio-6 clearfix">
                    <asp:Repeater ID="rpt_video_random" runat="server" OnItemDataBound="rpt_video_ItemDataBound" OnItemCommand="rpt_video_ItemCommand">
                        <ItemTemplate>
                            <article class="portfolio-item pf-media pf-icons">
                                <div class="portfolio-image" style="background-color: #222;">
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