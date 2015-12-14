<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title" class="page-title-parallax page-title-video yt-bg-player nobottompadding" data-quality="hd1080" data-start="11" data-stop="40" data-video="https://youtu.be/j8xPaAnx5OM" data-optimize="true" data-loop="true" data-opacity="1" style="background: #000; display: block !important">
    <div class="container clearfix">
        <div class="col_two_third dark">
            <div class="panel-body" style="padding: 0px 0;">
                <div class="emphasis-title title-center">
                    <h2 class="nopadding">
                        <%=Lingua.CaricaLingua("lgl_index_benvenuto")%>
                        </h2>
                    <div class="divider divider-rounded divider-center"style="margin: 10px 0;">
                        <i class="icon-arrow-down2"></i>
                    </div>
                    <div id="div_registrati" runat="server">
                        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin">
                            <i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                    </div>
                </div>
                <div class="col_half">
                    <div class="feature-box fbox-plain">
                        <div class="fbox-icon" data-animate="bounceIn" data-delay="300">
                            <a href="#"><img src="images/custom/icons/dark-visibility.png" alt="Cloud"></a>
                        </div>
                        <h3>Maggior visibilit&aacute;</h3>
                        <p style="min-height: 90px;">Registrati ed entra nel pi&uacute; grande <strong style="color: #ccc">expo virtuale della musica jazz</strong>, un occasione per fare networking solo con musicisti e addetti ai lavori.</p>
                        <p><a href="chisiamo.aspx" class="button button-rounded button-small nobottommargin">Approfondisci</a></p>
                    </div>
                </div>
                <div class="col_half col_last">
                    <div class="feature-box fbox-plain">
                        <div class="fbox-icon" data-animate="bounceIn" data-delay="600">
                            <a href="#"><img src="images/custom/icons/dark-opportunity.png" alt="Listen"></a>
                        </div>
                        <h3>Pi&uacute; opportunit&aacute;</h3>
                        <p style="min-height: 90px;">Carica i tuoi <strong style="color: #ccc">video</strong>, attiva nuovi <strong style="color: #ccc">contatti</strong>, collaborazioni e opportunit&aacute; di <strong style="color: #ccc">business</strong>, segui le classifiche settimanali!</p>
                        <p><a href="chisiamo.aspx" class="button button-rounded button-small nobottommargin">Approfondisci</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col_one_third col_last nobottomargin nobottompadding">
            <div class="panel panel-default divcenter rounded" data-animate="fadeInUp"
                data-delay="1000" style="max-width: 400px;">
                <asp:UpdatePanel ID="upd_login" runat="server">
                    <ContentTemplate>
                        <div class="panel-body" style="padding: 40px;">
                            <div id="processTabs">
                                <ul class="hidden">
                                    <li>
                                        <a href="#tab-register"></a>
                                    </li>
                                    <li>
                                        <a href="#tab-password"></a>
                                    </li>
                                </ul>
                                <div class="tab-content clearfix" id="tab-register">
                                    <div  id="div_login" runat="server">
                                        <div id="login-form" name="login-form" class="nobottommargin center">
                                            <h3 class="nopadding nomargin">
                                                <%=Lingua.CaricaLingua("lgl_index_accedi_profilo")%></h3>
                                            <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                                <i class="icon-arrow-down2"></i>
                                            </div>
                                            <div class="alert alert-danger display-hide display-hide" id="div_message" runat="server">
                                                <i class="icon-warning-sign"></i> <asp:Literal ID="ltl_message_error" runat="server"></asp:Literal>
                                            </div>
                                            <div class="col_full">
                                                <label for="login-form-username">
                                                    <%=Lingua.CaricaLingua("lgl_index_username")%></label>
                                                <div class="form-group" id="div_username" runat="server">
                                                    <asp:TextBox ID="username" name="username" runat="server" autocomplete="off"
                                                        CssClass="not-dark form-control placeholder-no-fix"></asp:TextBox>
                                                    <span for="username" style="font-size:15px; color:Red;" id="span_username" runat="server" visible="false">
                                                        <asp:Literal ID="ltl_msg_username" runat="server"></asp:Literal></span>
                                                </div>
                                            </div>
                                            <div class="col_full">
                                                <label for="login-form-password">
                                                    <%=Lingua.CaricaLingua("lgl_index_password")%></label>
                                                <div class="form-group" id="div_password" runat="server">
                                                    <asp:TextBox ID="password" name="password" autocomplete="off"
                                                        runat="server" CssClass="not-dark form-control placeholder-no-fix" TextMode="Password"></asp:TextBox>
                                                    <span for="password" style="font-size:15px; color:Red;" id="span_password" runat="server" visible="false">
                                                        <asp:Literal ID="ltl_msg_password" runat="server"></asp:Literal></span>
                                                </div>
                                            </div>
                                            <div class="col_full">
                                                <asp:LinkButton ID="btnAccedi" runat="server" CssClass="button button-rounded button-background nomargin">
                                                    <%=Lingua.CaricaLingua("lgl_index_accedi")%>
                                                </asp:LinkButton>
                                            </div>
                                            <div class="col_full nobottommargin">
                                                <a href="#" class="tab-linker" rel="1"><%=Lingua.CaricaLingua("lgl_index_password_dimenticata")%></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div  id="div_logged" runat="server" visible="false">
                                        <div id="login-form" name="login-form" class="nobottommargin center">
                                            <h3 class="nopadding nomargin">
                                                <%=Lingua.CaricaLingua("lgl_index_benvenuto_div")%></h3>
                                            <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                                <i class="icon-arrow-down2"></i>
                                            </div>
                                            <div class="">
                                                <span style="font-size:15px;">
                                                    <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                                                </span>
                                            </div>
                                            <br />
                                            <div class="col_full">
                                                <asp:LinkButton ID="btn_profilo" runat="server" CssClass="button button-rounded button-background nomargin">
                                                    <%=Lingua.CaricaLingua("lgl_index_vai_profilo")%>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="btn_esci" runat="server" CssClass="button button-rounded button-background nomargin">
                                                    <%=Lingua.CaricaLingua("lgl_index_esci")%>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content clearfix" id="tab-password">
                                    <div id="request_psw" name="request_psw" class="nobottommargin center">
                                        <h3 class="nopadding nomargin">
                                            <%=Lingua.CaricaLingua("lgl_index_richiedi_password")%></h3>
                                        <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                            <i class="icon-arrow-down2"></i>
                                        </div>
                                        <div class="alert alert-success display-hide" id="div_message_success" runat="server">
                                            <i class="icon-thumbs-up"></i> <asp:Literal ID="ltl_message_success" runat="server"></asp:Literal>
                                        </div>
                                        <div class="col_full">
                                            <label for="login-form-username">
                                                <%=Lingua.CaricaLingua("lgl_index_mail")%></label>
                                            <div class="form-group" id="div_e_mail_lost" runat="server">
                                                <asp:TextBox ID="txt_e_mail_lost" name="txt_e_mail_lost" runat="server" autocomplete="off"
                                                    CssClass="not-dark form-control placeholder-no-fix"></asp:TextBox>
                                                <span for="txt_e_mail_lost" style="font-size:15px; color:Red;" id="span_e_mail_lost" runat="server" visible="false">
                                                    <asp:Literal ID="ltl_msg_e_mail_lost" runat="server"></asp:Literal></span>
                                            </div>
                                        </div>
                                        <div class="col_full">
                                            <asp:LinkButton ID="btnInviaPassword" runat="server" CssClass="button button-rounded button-background nomargin">
                                                <%=Lingua.CaricaLingua("lgl_index_invia_password")%>
                                            </asp:LinkButton>
                                        </div>
                                        <div class="col_full nobottommargin">
                                            <a href="#" class="tab-linker" rel="0"><%=Lingua.CaricaLingua("lgl_index_accedi_izh")%></a>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="section intro-bg nomargin parallax"  data-stellar-background-ratio="0.3">
            <div class="container clearfix center">
                <div class="heading-block nobottomborder">
                    <h2>Quali opportunit&agrave;</h2>
                </div>
                <h3 style="font-weight: normal">
                    <strong>Italian Jazz Hub</strong> &egrave; un progetto di promozione internazionale del jazz
                    italiano, un meeting-expo virtuale di settore che permetter&agrave; ai musicisti e addetti
                    ai lavori di entrare in contatto in remoto, con colleghi di tutto il mondo attraverso
                    filmati, teaser e videoclip.<br><strong>Italian Jazz Hub</strong> &egrave; una iniziativa firmata da <strong>IMF
                    Foundation</strong>, gi&agrave; produttrice del roma jazz festival e si avvale della partnership
                    editoriale di <strong>Jazzit</strong>. 
                </h3>
            </div>
            <div class="container clearfix hidden">
                <div class="fancy-title title-dotted-border title-left">
                    <h3>
                        <%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
                </div>
                <div id="portfolio" class=" clearfix">
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="images/gallery/jazz1.jpg" alt="Open Imagination">
                            </a>
                            <div class="portfolio-overlay">
                                <a href="images/gallery/jazz1.jpg" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="image"><i class="icon-line-plus"></i></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="#">Open Imagination</a></h3>
                            <span><a href="#">Bebop</a>, <a href="#">Latin jazz</a></span>
                        </div>
                    </article>
                    <article class="portfolio-item pf-illustrations">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="images/gallery/jazz2.jpg" alt="Locked Steel Gate">
                            </a>
                            <div class="portfolio-overlay">
                                <a href="images/gallery/jazz2.jpg" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="image"><i class="icon-line-plus"></i></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="#">Locked Steel Gate</a></h3>
                            <span><a href="#">Free Jazz</a></span>
                        </div>
                    </article>
                    <article class="portfolio-item pf-graphics pf-uielements">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="images/gallery/jazz3.jpg" alt="Mac Sunglasses">
                            </a>
                            <div class="portfolio-overlay">
                                <a href="http://vimeo.com/89396394" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="portfolio-single-video.html">Mac Sunglasses</a></h3>
                            <span><a href="#">Acid Jazz</a>, <a href="#">Dixieland</a></span>
                        </div>
                    </article>
                    <article class="portfolio-item pf-icons pf-illustrations">
                        <div class="portfolio-image">
                            <div class="fslider" data-arrows="false" data-speed="400" data-pause="4000">
                                <div class="flexslider">
                                    <div class="slider-wrap">
                                        <div class="slide">
                                            <img src="images/gallery/jazz4.jpg" alt="Morning Dew">
                                        </div>
                                        <div class="slide">
                                            <img src="images/gallery/jazz4.jpg" alt="Morning Dew">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-overlay" data-lightbox="gallery">
                                <a href="images/gallery/jazz4.jpg" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="gallery-item"><i class="icon-line-stack-2"></i></a>
                                <a href="images/gallery/jazz4.jpg" class="hidden" data-lightbox="gallery-item"></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="portfolio-single-gallery.html">Morning Dew</a></h3>
                            <span><a href="#"><a href="#">Jazz Funk</a>, <a href="#">Nu Jazz</a></span>
                        </div>
                    </article>
                </div>
                <!-- Portfolio Script
                        ============================================= -->
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
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
<script type="text/javascript">
    var my_tab = 0;
    
    $(document).ready(function () {

        Init_Tab();

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

    });

    function endRequestHandler(sender, args) {
        Init_Tab();
        setTab(my_tab);
    }

    function Init_Tab() {
        $("#processTabs").tabs({
            show: {
                effect: "fade",
                duration: 400
            }
        });

        $(".tab-linker").click(function () {
            //alert($(this).attr('rel'));
            setTab($(this).attr('rel'));
            return false;
        });

    }

    function setTab(tab) {
        my_tab = tab;
        $("#processTabs").tabs("option", "active", tab);
    }
</script>
</asp:Content>