<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title" style="padding: 20px 0;background-color: #fff;/*background: url('<%=user_background%>') no-repeat top center; background-size: cover;*/">
        <div class="container clearfix">
            <div class="profile-header" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                <div data-class-lg="fleft" data-class-md="fleft" data-class-sm="nofloat" data-class-xs="nofloat" data-class-xxs="nofloat">
                    <asp:Image ID="img_utente" runat="server"  data-class-lg="" data-class-md="" data-class-sm="nomargin" data-class-xs="nomargin" data-class-xxs="nomargin" />
                </div>
                <div data-class-lg="fleft" data-class-md="fleft" data-class-sm="nofloat" data-class-xs="nofloat" data-class-xxs="nofloat">
                    <h1>
                        <asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>&nbsp;
                        <i class="i-circled i-small i-light icon-facetime-video fright i-vetrina nomargin" id="i_expo" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Expo" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"></i> 
                        <i class="i-circled i-small i-light icon-eye-open fright i-vetrina nomargin" id="i_view" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Audience" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"></i> 
                        <i class="i-circled i-small i-light icon-coffee2 fright i-vetrina nomargin" id="i_guest" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Guest" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"></i>
                        <span class="visible-xs visible-sm visible-md visible-lg">
                            <strong style="font-weight: 400;"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></strong><asp:Literal ID="ltl_trattino_where" runat="server"> -</asp:Literal>&nbsp;<asp:Literal ID="ltl_citta" runat="server"></asp:Literal>
                        </span>
                    </h1>
                    <h4 class="user-social nobottommargin">
                        <a href="#" target="_blank" id="a_web" runat="server">
                            <i class="icon-world nomargin"></i>
                        </a>
                        <a href="#" class="hidden" target="_blank" id="a_email" runat="server">
                            <i class="icon-email3 nomargin"></i>
                        </a>
                        <asp:Repeater ID="rpt_social" runat="server">
                            <ItemTemplate>
                                <a href="#" target="_blank" id="a_link" runat="server">
                                    <i class="icon-email3 nomargin" id="i_icon_01" runat="server"></i>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </h4>
                </div>
            </div>
        </div>
<!--        <div class="video-overlay"></div>-->
    </section>
    <asp:UpdatePanel ID="upd_header" runat="server">
        <ContentTemplate>
<!--
            <div class="section nomargin nopadding profile-submenu" id="top_section">
                <div class="container center clearfix">
                    <asp:LinkButton ID="btn_profilo" runat="server" CssClass="active">
                        Profilo
                    </asp:LinkButton>
                    <asp:LinkButton ID="btn_video" runat="server" CssClass="active">
                        Video
                    </asp:LinkButton>
                    <asp:LinkButton ID="btn_when" runat="server" CssClass="active">
                        Eventi
                    </asp:LinkButton>
                </div>
            </div>
-->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
<asp:UpdatePanel ID="upd_dati" runat="server">
    <ContentTemplate>
        <div class="content-wrap alt" id="div_content" runat="server" style="padding: 40px 0;">
            <div class="container  clearfix">
                <div class="postcontent clearfix nopadding">
                    <img src="http://sviluppo.mesys.it/Repository/JazzHub_Web/Utenti/54/pub/110220161044_12513506_1684606458485100_5126601187297684544_o.jpg" class="thumbnail">
                    <h5 class="citazione nomargin" style="font-weight: 300" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                        Sanguineti Giovanni, nato a Genova il 3 Ottobre 1974. Ha conseguito il diploma psico-pedagogico nel 1993 presso il liceo pedagogico "Piero Gobetti" di Genova e si è laureato in Scienze dell'Educazione con 110/110 e lode nel Marzo 1998 presso la facoltà di Scienze della Formazione dell'Università di Genova, svolgendo una tesi di confronto linguistico fra gli autori Fredric Nietzsche e Ivano Fossati; membro della International Society of Bassists, con sede a Dallas, dall’anno 2000.    
                    </h5>
                    <h4 class="color" style="margin-top: 40px" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-tv i-vetrina nomargin"></i> Video</h4>
                    <div class="divider divider-center divider-rounded" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-tv" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div id="portfolio" class="portfolio-3 clearfix standard-portfolio">

                        <article class="portfolio-item">
                            <div class="portfolio-image patch-placeholder">
                                <a id="content_rpt_video_btn_video_0" href="javascript:__doPostBack('ctl00$content$rpt_video$ctl00$btn_video','')">
                                    <div class="goto-video"><i class="icon-line-play"></i></div>
                                    <img id="content_rpt_video_img_copertina_0" src="http://sviluppo.mesys.it/Repository/JazzHub_Web/Video/54/040420160115_preview.jpg" style="visibility: visible; opacity: 1; display: block;"></a>
                            </div>
                            <div class="portfolio-desc">
                                <h3>INVERNO - 1°TEMPO</h3>
                                <span>3° ESTRATTO DAL DVD "TRIO IN OPERA" DEVEGA 2015</span>
                            </div>
                        </article>

                        <article class="portfolio-item">
                            <div class="portfolio-image patch-placeholder">
                                <a id="content_rpt_video_btn_video_1" href="javascript:__doPostBack('ctl00$content$rpt_video$ctl01$btn_video','')">
                                    <div class="goto-video"><i class="icon-line-play"></i></div>
                                    <img id="content_rpt_video_img_copertina_1" src="http://sviluppo.mesys.it/Repository/JazzHub_Web/Video/54/040420160115_preview.jpg" style="visibility: visible; opacity: 1; display: block;"></a>
                            </div>
                            <div class="portfolio-desc">
                                <h3>NESSUN DORMA</h3>
                                <span>2° ESTRATTO DAL DVD "TRIO IN OPERA" DEVEGA 2015</span>
                            </div>
                        </article>

                        <article class="portfolio-item">
                            <div class="portfolio-image patch-placeholder">
                                <a id="content_rpt_video_btn_video_2" href="javascript:__doPostBack('ctl00$content$rpt_video$ctl02$btn_video','')">
                                    <div class="goto-video"><i class="icon-line-play"></i></div>
                                    <img id="content_rpt_video_img_copertina_2" src="http://sviluppo.mesys.it/Repository/JazzHub_Web/Video/54/100220162300_provtio.JPG" style="visibility: visible; opacity: 1; display: block;"></a>
                            </div>
                            <div class="portfolio-desc">
                                <h3>VALZER DI MUSETTA</h3>
                                <span>1° ESTRATTO DAL DVD " TRIO IN OPERA" DEVEGA 2015</span>
                            </div>
                        </article>

                        <article class="portfolio-item">
                            <div class="portfolio-image patch-placeholder">
                                <a id="content_rpt_video_btn_video_3" href="javascript:__doPostBack('ctl00$content$rpt_video$ctl03$btn_video','')">
                                    <div class="goto-video"><i class="icon-line-play"></i></div>
                                    <img id="content_rpt_video_img_copertina_3" src="http://sviluppo.mesys.it/Repository/JazzHub_Web/Video/54/270120161944_preview.jpg" style="visibility: visible; opacity: 1; display: block;"></a>
                            </div>
                            <div class="portfolio-desc">
                                <h3>"MIKE P." Live @ Indisparte - Bergamo</h3>
                                <span title="Philippe Petrucciani guitar - Alessandro Collina piano - Giovanni Sanguineti bass">Philippe Petrucciani guitar - Alessandro Collina piano - …</span>
                            </div>
                        </article>

                    </div>
                </div>
                
                <div class="sidebar col_last clearfix" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                    <h4 class="color" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-calendar3 i-vetrina nomargin"></i> Eventi in programma</h4>
                    <div class="divider divider-rounded divider-center notopmargin" data-class-lg="hidden" data-class-md="hidden" data-class-sm="hidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-calendar3" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div class="date-list">
                        <h3 class="nomargin" style="color: #3A4B5F">
                            Nessuna data presente
                        </h3>
                    </div>
                    <div class="date-list">
                        <h4 class="nomargin" style="font-weight: 300; color: #6481A6">
                            Livorno - <small style="color: #6481A6">20/10/2016 at 21:30</small>
                        </h4>
                        <h3 class="nomargin" style="color: #3A4B5F">
                            The Cage
                        </h3>
                        <p class="nomargin" style="color: #6481A6">Ariconcertone</p>
                    </div>
                    <div class="date-list">
                        <h4 class="nomargin" style="font-weight: 300; color: #6481A6">
                            Padova - <small style="color: #6481A6">10/07/2016 at 21:00</small>
                        </h4>
                        <h3 class="nomargin" style="color: #3A4B5F">
                            Jazz Club
                        </h3>
                        <p class="nomargin" style="color: #6481A6">Concertone</p>
                    </div>
                    
                </div>
                <div class="clear"></div>
<!--
                <div id="p_profilo" runat="server" CssClass="hidden">
                    <h4 class="color">Profilo</h4>
                    <div class="divider divider-rounded divider-center"><i class="icon-user2" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <h5 style="font-weight: 300" class="citazione"><asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal></h5>
                </div>
                <div id="p_video" runat="server" CssClass="hidden">
                    <h4 class="color"><asp:literal ID="ltl_titolo" runat="server"></asp:literal></h4>
                    <div class="divider divider-rounded divider-center"><i class="icon-tv" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <h2 style="font-weight: 300;" class="color" id="h_nessun_video" runat="server">
                        <%=Lingua.CaricaLingua("lgl_user_post_nessun_video")%>
                    </h2>
                    <div id="portfolio" class="<%=pf_num%> clearfix standard-portfolio">
                        <asp:Repeater ID="rpt_video" runat="server">
                            <ItemTemplate>
                                <article class="portfolio-item">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <div class="goto-video"><i class="icon-line-play"></i></div>
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></span>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div> 
                <div id="p_when" runat="server" class="date-list divcenter center" CssClass="hidden">
                    <h4 class="color"><%=Lingua.CaricaLingua("lgl_user_post_eventi_programma")%></h4>
                    <div class="divider divider-rounded divider-center divider-custom"><i class="icon-calendar3" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <h2 style="font-weight: 300;" class="color" id="h_nessun_eventi" runat="server">
                        <%=Lingua.CaricaLingua("lgl_user_post_nessun_evento")%>
                    </h2>
                    <asp:Repeater ID="rpt_when" runat="server">
                        <ItemTemplate>
                            <div class="date-list">
                                <h4 class="nomargin" style="font-weight: 300; color: #6481A6">
                                    <asp:Literal ID="ltl_when_citta" runat="server"></asp:Literal> - <small style="color: #6481A6"><asp:Literal ID="ltl_when_quando_data" runat="server"></asp:Literal> at <asp:Literal ID="ltl_when_quando_ora" runat="server"></asp:Literal></small>
                                </h4>
                                <h3 class="nomargin" style="color: #3A4B5F">
                                    <asp:Literal ID="ltl_when_luogo" runat="server"></asp:Literal>
                                </h3>
                                <p class="nomargin" style="color: #6481A6"><asp:Literal ID="ltl_when_titolo" runat="server"></asp:Literal></p>
                            </div>
                        </ItemTemplate> 
                    </asp:Repeater> 
                </div>
-->
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
<!--    <script type="text/javascript" src="/js/readmore.js"></script>-->
    <script type="text/javascript" >
        $('[data-toggle=popover]').popover();
//        $('.article').readmore({
//            afterToggle: function(trigger, element, expanded) {
//                if(expanded) { // The "Close" link was clicked
//                    $('html, body').animate( { scrollTop: element.offset().top }, {duration: 1000 } );
//                }
//                if(! expanded) { // The "Close" link was clicked
//                    $('html, body').animate( { scrollTop: element.offset().top }, {duration: 1000 } );
//                }
//            },
//            speed: 750,
//            collapsedHeight: 130,
//            moreLink: '<a href="#" style="color: #fff; font-style: italic; margin-top: 20px;">leggi tutto<br><i style="font-size: 26px;" class="icon-chevron-down"></i></a>',
//            lessLink: '<a href="#" style="color: #fff; font-style: italic;"><i style="font-size: 26px; margin-top: 20px;" class="icon-chevron-up"></i><br>chiudi</a>'
//        });
    </script>
</asp:Content>
