<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Index.aspx.vb" Inherits="JazzHub_Web.Index" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<!--    <section id="page-title" class="page-title-parallax page-title-video yt-bg-player nobottompadding" data-quality="hd1080" data-start="11" data-stop="40" data-video="https://youtu.be/j8xPaAnx5OM" data-optimize="true" data-loop="true" data-opacity="1" style="background: #000; display: block !important">-->
    <section id="page-title" class="page-title-parallax" style="background-image: url('images/custom/jazz-wallpaper.jpg');" data-stellar-background-ratio="0.3">
        <div class="container clearfix">
            <div class="col_two_third dark">
                <div class="panel-body" style="padding: 0px 0;">
                    <div class="emphasis-title title-center">
                        <h2 class="nopadding text-shadow">
                            <strong><%=Lingua.CaricaLingua("lgl_index_benvenuto")%></strong>
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
                        <div class="feature-box fbox-plain" data-class-lg="feature-box fbox-plain" data-class-md="feature-box fbox-plain" data-class-sm="feature-box fbox-plain nopadding" data-class-xs="feature-box fbox-plain nopadding" data-class-xxs="feature-box fbox-plain nopadding">
                            <div class="fbox-icon" data-animate="bounceIn" data-delay="300" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden"  data-class-xxs="hidden">
                                <a href="#"><img src="images/custom/icons/dark-visibility.png" alt="Cloud"></a>
                            </div>
                            <h3>Maggiore visibilit&aacute;</h3>
                            <p style="min-height: 90px;">Registrati ed entra nel pi&uacute; grande <strong style="color: #ccc">expo virtuale della musica jazz</strong>, un occasione per fare networking solo con musicisti e addetti ai lavori.</p>
                            <p><a href="chisiamo.aspx" class="button button-rounded button-small nobottommargin">Approfondisci</a></p>
                        </div>
                    </div>
                    <div class="col_half col_last">
                        <div class="feature-box fbox-plain" data-class-lg="feature-box fbox-plain" data-class-md="feature-box fbox-plain" data-class-sm="feature-box fbox-plain nopadding" data-class-xs="feature-box fbox-plain nopadding" data-class-xxs="feature-box fbox-plain nopadding">
                            <div class="fbox-icon" data-animate="bounceIn" data-delay="600" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden"  data-class-xxs="hidden">
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
                <div class="panel panel-default divcenter rounded" data-animate="fadeInUp" data-delay="1000" style="max-width: 400px;">
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
        <div class="section nomargin parallax">
            <div class="container clearfix ">
                <div class="fancy-title title-dotted-border title-left">
                    <h3>
                        <%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
                </div>
                <div id="portfolio" class="portfolio-3 clearfix">
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=35DjL82lmFU" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/35DjL82lmFU/0.jpg" alt="Mirko Pedrotti Quintet feat. Chris Montague - LIVE at Südtirol Jazzfestival 2015">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Mirko Pedrotti Quintet feat. Chris Montague<br><br>LIVE at Südtirol Jazzfestival 2015</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=35DjL82lmFU" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=JeWj5SijjFo" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/JeWj5SijjFo/0.jpg" alt="Open Imagination">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Jazzit Fest: essere una good practice culturale » Jazzit TV</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=JeWj5SijjFo" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=LiXrwWlA8oU" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/LiXrwWlA8oU/0.jpg" alt="Enrico Olivanti Quintet Il Pensiero Positivo (promo)">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Enrico Olivanti Quintet<br>Il Pensiero Positivo (promo)</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=LiXrwWlA8oU" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=mMn21SDyWS4" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/mMn21SDyWS4/0.jpg" alt="Leonardo De Lorenzo octet 'Waiting #3'">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Leonardo De Lorenzo octet<br>"Waiting #3"</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=mMn21SDyWS4" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=_0oS9Z75fgM" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/_0oS9Z75fgM/0.jpg" alt="Like at The Beginning - Angelo Mastronardi Trio">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Like at The Beginning<br>Angelo Mastronardi Trio</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=_0oS9Z75fgM" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=eoQHlLTiRqg" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/eoQHlLTiRqg/0.jpg" alt="Fabrizio Bosso Quartet & Paolo Silvestri Ensemble - Roma Jazz Festival 2015">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Fabrizio Bosso Quartet<br>&amp; Paolo Silvestri Ensemble<br><br>Roma Jazz Festival 2015</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=eoQHlLTiRqg" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=wOPvd_3dvPE" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/wOPvd_3dvPE/0.jpg" alt="Dr.Jazz - Ain't Misbehavin (live @RadioBaiano - INDIEfferenti,03/03/2015)">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Dr.Jazz - Ain't Misbehavin<br><br>(live @RadioBaiano - INDIEfferenti,03/03/2015)</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=wOPvd_3dvPE" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=-jVGc8BLi-A" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/-jVGc8BLi-A/0.jpg" alt="Donatello D'Attoma | Upcoming Album">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Donatello D'Attoma<br>Upcoming Album</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=-jVGc8BLi-A" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="https://www.youtube.com/watch?v=5aGsU4qG624" data-lightbox="iframe">
                                <img src="http://img.youtube.com/vi/5aGsU4qG624/0.jpg" alt="Adovabadan Jazz Band - Cake Walking Babies from Home @ Teatro del Pane 2015">
                            </a>
                            <div class="portfolio-overlay">
                                <div class="portfolio-desc">
                                    <h3>Adovabadan Jazz Band<br>Cake Walking Babies<br><br>from Home @ Teatro del Pane 2015</h3>
                                    <!--                                            <span><a href="#">Media</a>, <a href="#">Icons</a></span>-->
                                </div>
                                <a href="https://www.youtube.com/watch?v=5aGsU4qG624" class="center-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                                <!--                                        <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>-->
                            </div>
                        </div>
                    </article>
                </div>
            </div>
            <div class="container clearfix" id="div_video" runat="server" style="margin-top:50px;">
                <div class="fancy-title title-dotted-border title-left">
                    <h3>
                        Selezione dei nostri video</h3>
                </div>
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image" style="background-color: #222;">
                                        <video width="100%">
                                            <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                            Your browser does not support the video tag.
                                        </video>
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
            </div>
        </div>
        <div class="section intro-bg nomargin parallax"  data-stellar-background-ratio="0.3">
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