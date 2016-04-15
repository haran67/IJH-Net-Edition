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
                    <h5 class="citazione nomargin" style="font-weight: 300" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                        <asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal>
                    </h5>
                    <h4 class="color" style="margin-top: 40px" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-tv i-vetrina nomargin"></i> Video</h4>
                    <div class="divider divider-center divider-rounded" data-class-lg="hidden" data-class-md="hidden" data-class-sm="nothidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-tv" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div id="portfolio"  class="<%=pf_num%> clearfix standard-portfolio">
                        <h4 class="color hidden"><asp:literal ID="ltl_titolo" runat="server"></asp:literal></h4>
                        <h2 style="font-weight: 300;" class="color" id="h_nessun_video" runat="server">
                            <%=Lingua.CaricaLingua("lgl_user_post_nessun_video")%>
                        </h2>
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
                
                <div class="sidebar col_last clearfix" data-class-lg="tleft" data-class-md="tleft" data-class-sm="center" data-class-xs="center" data-class-xxs="center">
                    <h4 class="color" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="hidden" data-class-xs="hidden" data-class-xxs="hidden"><i class="i-circled i-light i-small icon-calendar3 i-vetrina nomargin"></i> 
                        <%=Lingua.CaricaLingua("lgl_user_post_eventi_programma")%></h4>
                    <div class="divider divider-rounded divider-center notopmargin" data-class-lg="hidden" data-class-md="hidden" data-class-sm="hidden" data-class-xs="nothidden" data-class-xxs="nothidden"><i class="icon-calendar3" style="background-color: rgba(0,0,0,.1)"></i></div>
                    <div class="date-list">
                        <h3 class="nomargin" style="color: #3A4B5F" id="h_nessun_eventi" runat="server">
                            <%=Lingua.CaricaLingua("lgl_user_post_nessun_evento")%>
                        </h3>
                    </div>
                    <div class="date-list available">
                        <h3 class="nomargin" style="font-weight: 300; color: #3c883c">Disponibile</h3>
                        <h4 class="nomargin" style="font-weight: 300;">
                            <small style="color: #4eb24e;">dal <strong style="font-weight: 600; color: #4eb24e">20/10/2016</strong> al <strong style="font-weight: 600; color: #4eb24e">20/10/2016</strong></small>
                        </h4>
                        <a href="#" class="button button-success button-rounded button-mini nomargin" style="margin-top: 10px !important;"><i class="icon-email3 nomargin"></i> Contatta</a>
                    </div>
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
                    <div class="date-list available">
                        <h3 class="nomargin" style="font-weight: 300; color: #3c883c">Disponibile</h3>
                        <h4 class="nomargin" style="font-weight: 300;">
                            <small style="color: #4eb24e;">dal <strong style="font-weight: 600; color: #4eb24e">20/10/2016</strong> al <strong style="font-weight: 600; color: #4eb24e">20/10/2016</strong></small>
                        </h4>
                        <a href="#" class="button button-success button-rounded button-mini nomargin" style="margin-top: 10px !important;"><i class="icon-email3 nomargin"></i> Contatta</a>
                    </div>
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
