<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-dark" style="padding: 20px 0;background: url('<%=user_background%>') no-repeat top center; background-size: cover;">
        <div class="video-overlay"></div>
        <div class="container center clearfix">
            <div class="profile-header">
                <div>
                <asp:Image ID="img_utente" runat="server" CssClass="nomargin" />
                <div class="user-profile-type">
                    <i class="i-circled i-small icon-facetime-video nomargin nofloat inline-block box-shadow-custom" id="i_expo" runat="server" style="width: 40px !important; height: 40px !important; line-height: 40px !important;" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Expo"></i> 
                    <i class="i-circled i-small icon-eye-open nomargin nofloat inline-block box-shadow-custom" id="i_view" runat="server" style="width: 40px !important; height: 40px !important; line-height: 40px !important;" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Audience"></i> 
                    <i class="i-circled i-small icon-coffee2 nomargin nofloat inline-block box-shadow-custom" id="i_guest" runat="server" style="width: 40px !important; height: 40px !important; line-height: 40px !important;" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Guest"></i>
                </div>
                <h1 class="text-shadow">
                    <asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                    <span class="visible-xs visible-sm visible-md visible-lg">
                        <strong style="font-weight: 400; color: #fff"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></strong><asp:Literal ID="ltl_trattino_where" runat="server">-</asp:Literal>&nbsp;<asp:Literal ID="ltl_citta" runat="server"></asp:Literal>
                    </span>
                </h1>
                <div class="noheight user-divider"></div>
                <div class="user-profile-head-content" id="inizio-testo">
                    <p class="article nomargin text-shadow"><asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal></p>
                    <div style="height: 30px;"></div>
                    <h3 class="user-social">
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
                    </h3>
                </div>
            </div>
        </div>
    </section>
<asp:UpdatePanel ID="upd_header" runat="server">
    <ContentTemplate>
    <div class="section nomargin nopadding profile-submenu" style="background: #3C4B5E;" id="top_section">
        <div class="container center clearfix">
            <asp:LinkButton ID="btn_video" runat="server" CssClass="active">
                Video
            </asp:LinkButton>
            <asp:LinkButton ID="btn_when" runat="server" CssClass="active">
                Eventi
            </asp:LinkButton>
        </div>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
<asp:UpdatePanel ID="upd_dati" runat="server">
    <ContentTemplate>
        <div class="content-wrap alt" id="div_content" runat="server">
            <div class="container center clearfix">
                <div id="p_video" runat="server">
                    <h4>
                        <asp:literal ID="ltl_titolo" runat="server"></asp:literal>
                    </h4>
                    <div class="divider divider-rounded divider-center divider-custom"><i class="icon-play" style="background-color: #e6e6e6"></i></div>
                    <h2 style="font-weight: 300; color: #6481A6" id="h_nessun_video" runat="server">
                        <%=Lingua.CaricaLingua("lgl_user_post_nessun_video")%>
                    </h2>
                    <div id="portfolio" class="<%=pf_num%> clearfix standard-portfolio">
                        <asp:Repeater ID="rpt_video" runat="server">
                            <ItemTemplate>
                                <article class="portfolio-item clearfix">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc box-shadow-custom" style="padding: 10px;">
                                        <h3 style="max-height: 2.5em; overflow: hidden"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span style="max-height: 1.85em; overflow: hidden"><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></span>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div> 
                <div id="p_when" runat="server" class="date-list divcenter center">
                    <h4><%=Lingua.CaricaLingua("lgl_user_post_eventi_programma")%></h4>
                    <div class="divider divider-rounded divider-center divider-custom"><i class="icon-calendar3" style="background-color: #e6e6e6"></i></div>
                    <h2 style="font-weight: 300; color: #6481A6" id="h_nessun_eventi" runat="server">
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
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript" src="/js/readmore.js"></script>
    <script type="text/javascript" >
        $('[data-toggle=popover]').popover();
        $('.article').readmore({
            afterToggle: function(trigger, element, expanded) {
                if(expanded) { // The "Close" link was clicked
                    $('html, body').animate( { scrollTop: element.offset().top }, {duration: 1000 } );
                }
                if(! expanded) { // The "Close" link was clicked
                    $('html, body').animate( { scrollTop: element.offset().top }, {duration: 1000 } );
                }
            },
            speed: 750,
            collapsedHeight: 130,
            moreLink: '<a href="#" style="color: #fff; font-size: 20px; margin-top: 20px;"><i class="icon-chevron-down"></i></a>',
            lessLink: '<a href="#" style="color: #fff; font-size: 20px; margin-top: 20px;"><i class="icon-chevron-up"></i></a>'
        });
    </script>
</asp:Content>
