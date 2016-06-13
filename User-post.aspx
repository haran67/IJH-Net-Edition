<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-mini" style="background-color: #fdd" id="div_profilo" runat="server">
        <div class="container clearfix">
            <h1 style="font-weight: 300; display: none"><asp:Literal ID="ltl_utente_title" runat="server"></asp:Literal></h1>
            <h1 style="font-weight: 400; color: #900"><%=Lingua.CaricaLingua("lgl_user_post_anterprima")%></h1>
            <ol class="breadcrumb">
                <li><asp:LinkButton ID="btn_indietro" style="background:#e33; padding: 5px 10px; color: #fff; font-weight: 600; border-radius: 3px" runat="server"><%=Lingua.CaricaLingua("lgl_torna_profilo")%></asp:LinkButton></li>
            </ol>
        </div>
    </section>
    <section class="page-title" style="padding: 20px 0;background-color: #fff;/*background: url('<%=user_background%>') no-repeat top center; background-size: cover;*/">
        <div class="container clearfix">
            <div class="profile-header" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                <div class="postcontent clearfix nopadding nomargin">
                    <div style="position: relative" data-class-lg="fleft" data-class-md="fleft" data-class-sm="nofloat" data-class-xs="nofloat" data-class-xxs="nofloat">
                        <asp:Image ID="img_utente" runat="server"  data-class-lg="" data-class-md="" data-class-sm="nomargin" data-class-xs="nomargin" data-class-xxs="nomargin" />
                        <div style="position: absolute; top: -3px; left: -3px;">
                            <i class="i-circled i-small i-light icon-facetime-video fright nomargin" id="i_expo" runat="server" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Expo"></i> 
                            <i class="i-circled i-small i-light icon-eye-open fright nomargin" id="i_view" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Visitor"></i> 
                            <i class="i-circled i-small i-light icon-coffee2 fright nomargin" id="i_guest" runat="server" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Guest"></i>
                        </div>
                    </div>
                    <div data-class-lg="fleft" data-class-md="fleft" data-class-sm="nofloat" data-class-xs="nofloat" data-class-xxs="nofloat">
                        <h1>
                            <asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>&nbsp;
                            <span class="visible-xs visible-sm visible-md visible-lg">
                                <strong style="font-weight: 400;"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></strong>
                                <asp:Literal ID="ltl_trattino_where" runat="server">&nbsp;-&nbsp;</asp:Literal><asp:Literal ID="ltl_citta" runat="server"></asp:Literal>
                                &nbsp;<span style="display: inline; color: #ccc"><asp:Literal ID="ltl_nazionalita" runat="server"></asp:Literal></small>
                            </span>
                        </h1>
                        <h4 class="user-social nobottommargin">
                            <a href="tel:+393497555400" target="_blank" data-container="body" data-trigger="hover" 
                                data-toggle="popover" data-placement="bottom" data-content="+393497555400" id="a_phone" runat="server">
                                <i class="icon-fontello-phone nomargin" ></i>
                            </a>
                            <a href="#" class="hidden" target="_blank" id="a_email" runat="server">
                                <i class="icon-email3 nomargin"></i>
                            </a>
                            <a href="#" target="_blank" id="a_web" runat="server">
                                <i class="icon-fontello-world nomargin"></i>
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
                <div class="sidebar col_last clearfix nomargin hidden">
                    <h4 class="color" style="margin: 10px" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden">
                        <i class="i-circled i-light i-small icon-user3 i-vetrina nomargin"></i>
                        <%=Lingua.CaricaLingua("lgl_user_post_cerca")%></h4>
                    <div class="divider divider-rounded divider-center notopmargin" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden">
                        <i class="icon-user3" style="background-color: rgba(0,0,0,.1)"></i>
                    </div>
                    <asp:TextBox ID="txt_ricerca" runat="server" AutoPostBack="true" CssClass="form-control custom-input"
                                 Placeholder="nome o luogo, poi invio" style="width: 80%; float: left;"></asp:TextBox>
                    <a href="#" class="btn-search"><i class="icon-search"></i></a>
                </div>
            </div>
        </div>
    </section>
    <asp:UpdatePanel ID="upd_header" runat="server">
        <ContentTemplate>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
<asp:UpdatePanel ID="upd_dati" runat="server">
    <ContentTemplate>
        <div class="content-wrap alt" id="div_content" runat="server" style="padding: 40px 0;">
            <div class="container  clearfix">
                <div class="postcontent clearfix nopadding">
                    <asp:Image ID="img_copertina" runat="server" class="thumbnail" />
                    <h4 class="color" style="margin-top: 40px" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-note i-vetrina nomargin"></i> <%=Lingua.CaricaLingua("lgl_userpost_biosketch")%></h4>
                    <div class="divider divider-center divider-rounded" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-note" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <h5 class="citazione nomargin" style="font-weight: 300" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                        <asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal>
                    </h5>
                    <h4 class="color" style="margin-top: 40px" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-tv i-vetrina nomargin"></i> <%=Lingua.CaricaLingua("lgl_videolist_video")%></h4>
                    <div class="divider divider-center divider-rounded" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-tv" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div id="portfolio"  class="<%=pf_num%> clearfix standard-portfolio">
                        <h4 class="color hidden"><asp:literal ID="ltl_titolo" runat="server"></asp:literal></h4>
                        <h2 style="font-weight: 300;" class="color" id="h_nessun_video" runat="server">
                            <%=Lingua.CaricaLingua("lgl_user_post_nessun_video")%>
                        </h2>
                        <asp:Repeater ID="rpt_video" runat="server" OnItemCommand="rpt_video_ItemCommand" OnItemDataBound="rpt_video_ItemDataBound">
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
                    <div id="div_liked_expo" runat="server">
                        <h4 class="color" style="margin-top: 40px" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-tv i-vetrina nomargin"></i> <%=Lingua.CaricaLingua("lgl_userpost_liked")%></h4>
                        <div class="divider divider-center divider-rounded" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-tv" style="background-color: rgba(0,0,0,.1)"></i></div>
                        <div id="portfolio"  class="<%=pf_num_liked%> clearfix standard-portfolio">
                            <asp:Repeater ID="rpt_video_like_expo" runat="server" OnItemCommand="rpt_video_ItemCommand" OnItemDataBound="rpt_video_ItemDataBound">
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
                </div>
                
                <div class="sidebar col_last clearfix" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                    <h4 class="color" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-vynil i-vetrina nomargin"></i> 
                        My store</h4>
                    <div class="divider divider-rounded divider-center notopmargin" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-vynil" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div class="clearfix">
                        <a href="#" class="social-icon si-rounded si-outlined si-soundcloud" target="_blank">
                            <i class="icon-soundcloud"></i>
                            <i class="icon-soundcloud"></i>
                        </a>
                        <a href="#" class="social-icon si-rounded si-outlined si-spotify" target="_blank">
                            <i class="icon-spotify"></i>
                            <i class="icon-spotify"></i>
                        </a>
                        <a href="#" class="social-icon si-rounded si-outlined si-itunes" target="_blank">
                            <i class="icon-itunes"></i>
                            <i class="icon-itunes"></i>
                        </a>
                        <a href="#" class="social-icon si-rounded si-outlined si-amazon" target="_blank">
                            <i class="icon-amazon"></i>
                            <i class="icon-amazon"></i>
                        </a>
                    </div>
                    <h4 style="margin-top: 40px" class="color" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-calendar3 i-vetrina nomargin"></i> 
                        <%=Lingua.CaricaLingua("lgl_user_post_eventi_programma")%></h4>
                    <div class="divider divider-rounded divider-center" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-calendar3" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div class="date-list" id="h_nessun_eventi" runat="server">
                        <h3 class="nomargin" style="color: #3A4B5F">
                            <%=Lingua.CaricaLingua("lgl_user_post_nessun_evento")%>
                        </h3>
                    </div>
                    <div class="overflow" style="max-height: 700px;">
                        <asp:Repeater ID="rpt_appuntamenti" runat="server">
                            <ItemTemplate>
                                <div class="date-list" id="div_evento" runat="server">
                                    <h3 class="nomargin" style="color: #3A4B5F">
                                        <asp:Literal ID="ltl_when_citta" runat="server"></asp:Literal>
                                    </h3>
                                    <h4 class="nomargin" style="font-weight: 300; color: #3A4B5F">
                                        <asp:Literal ID="ltl_when_luogo" runat="server"></asp:Literal>
                                    </h4>
                                    <h4 class="nomargin" style="font-weight: 300; color: #6481A6">
                                        <asp:Literal ID="ltl_when_quando_data" runat="server"></asp:Literal> at <asp:Literal ID="ltl_when_quando_ora" runat="server"></asp:Literal>
                                    </h4>
                                    <p class="nomargin" style="color: #999; line-height: 1.3em; padding-top: 5px;"><asp:Literal ID="ltl_when_titolo" runat="server"></asp:Literal></p>
                                </div>
                                <div class="date-list available" id="div_disponibilita" runat="server">
                                    <h3 class="nomargin" style="font-weight: 300; color: #3c883c"><%=Lingua.CaricaLingua("lgl_user_post_disponibile")%></h3>
                                    <h4 class="nomargin" style="font-weight: 300; color: #3c883c;">
                                        <asp:Literal ID="ltl_luogo" runat="server"></asp:Literal>
                                    </h4>
                                    <h4 class="nomargin" style="font-weight: 300; color: #4eb24e;">
                                        <%=Lingua.CaricaLingua("lgl_user_post_disponibile_dal")%> <asp:Literal ID="ltl_ua_dal" runat="server"></asp:Literal> <%=Lingua.CaricaLingua("lgl_user_post_disponibile_al")%> <asp:Literal ID="ltl_ua_al" runat="server"></asp:Literal>
                                    </h4>
                                    <p class="nomargin" style="color: #999; line-height: 1.3em; padding-top: 5px;">
                                        <asp:Literal ID="ltl_annuncio" runat="server"></asp:Literal>
                                    </p>
                                    <a href="#" class="button button-success button-rounded button-mini nomargin" style="margin-top: 10px !important;" id="a_annuncio_mail" runat="server"><i class="icon-email3 nomargin"></i> 
                                        <%=Lingua.CaricaLingua("lgl_user_post_contatta")%>
                                    </a>
                                </div>
                            </ItemTemplate> 
                        </asp:Repeater>
                    </div>
                    <asp:Repeater ID="rpt_when" runat="server">
                        <ItemTemplate>
                        </ItemTemplate> 
                    </asp:Repeater>
                    <asp:Repeater ID="rpt_annunci" runat="server">
                        <ItemTemplate>
                        </ItemTemplate> 
                    </asp:Repeater> 
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript" >
        $('[data-toggle=popover]').popover();
    </script>
</asp:Content>
