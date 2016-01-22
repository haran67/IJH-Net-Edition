<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title" class="page-title-parallax page-title-dark page-title-video" style="background-color: #000;">
        <div class="video-wrap" style="height: 100%;">
            <video poster="images/custom/jazz-wallpaper.jpg" preload="auto" loop autoplay muted>
                <source src='images/videos/header-video.mp4' type='video/mp4' />
                <source src='images/videos/explore.webm' type='video/webm' />
            </video>
            <div class="video-overlay"></div>
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
                            
                            <a href="login.aspx" class="button button-rounded  button-xlarge nobottommargin">Accedi</a> 
                            <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="section nomargin parallax">
            <div class="container clearfix ">
                <div class="fancy-title title-dotted-border title-left">
                    <h3>
                        <%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
                </div>
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item pf-media pf-icons">
                                <div class="portfolio-image" style="background-color: #222;">
                                    <video width="100%" id="video_span" runat="server">
                                        <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                        Your browser does not support the video tag.
                                    </video>
                                    <asp:Image ID="img_copertina" runat="server"/>
                                    <div class="portfolio-overlay">
                                        <div class="portfolio-desc">
                                            <h3 style="background-color:transparent;">
                                            <asp:Literal ID="ltl_utente" runat="server"></asp:Literal><br><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        </div>
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <i class="icon-line-play"></i>
                                        </asp:LinkButton>
                                    </div>

                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <pager:MesysPager ID="pager" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                            OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="6"
                            Visible="false" />
                    </div>
                </div>
            </div>
            <div class="container clearfix hidden" id="div_video" runat="server" style="margin-top:50px;">
                <div class="fancy-title title-dotted-border title-left">
                    <h3>
                        Selezione dei nostri video</h3>
                </div>
                <div id="portfolio" class="portfolio-3 clearfix">
                </div>
            </div>
        </div>
            <div class="section dark nomargin parallax"  style="background: url('images/custom/jazz-wallpaper.jpg'); background-size: cover; background-position: center center" data-stellar-background-ratio="0.3">
            <div class="container clearfix center">
                <div class="emphasis-title " data-animate="flipInX" data-delay="500">
                    <h2>Quali opportunit&agrave;</h2>
                    <p class="lead topmargin-sm" data-animate="flipInX" data-delay="1000">
                        <strong>Italian Jazz Hub</strong> &egrave; un progetto di promozione internazionale del jazz
                        italiano, un meeting-expo virtuale di settore che permetter&agrave; ai musicisti e addetti
                        ai lavori di entrare in contatto in remoto, con colleghi di tutto il mondo attraverso
                        filmati, teaser e videoclip.<br><strong>Italian Jazz Hub</strong> &egrave; una iniziativa firmata da <strong>IMF
                        Foundation</strong>, gi&agrave; produttrice del roma jazz festival e si avvale della partnership
                        editoriale di <strong>Jazzit</strong>. 
                    </p>
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