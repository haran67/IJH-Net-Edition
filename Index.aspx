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
            <video poster="images/custom/sfondo.jpg" preload="auto" loop autoplay muted>
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
        <div class="section nomarginbottom nopadding parallax" >
            <div class="container clearfix " id="div_like_visi" runat="server">
                <div class="fancy-title title-border title-center">
                    <h3><%=Lingua.CaricaLingua("lgl_index_votati_visi")%></h3>
                </div>
                <div id="portfolio" class="portfolio-4 clearfix">
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
                <div id="portfolio" class="portfolio-4 clearfix">
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