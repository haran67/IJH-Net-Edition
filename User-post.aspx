<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-dark" style="padding: 20px 0;background: url('images/profile-cover.jpg') no-repeat top center; background-size: cover">
        <div class="container clearfix">
            <div class="col_three_fifth nobottommargin">
                <asp:Image ID="img_utente" runat="server" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="hidden" data-class-xxs="hidden" style="height: 120px; width: 120px; float: left; margin-right: 20px;" />
                <h1 class="topmargin-sm text-shadow"><asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                <span class="visible-xs visible-sm visible-md visible-lg" style="font-weight: 300"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal> - <strong style="font-weight: normal">guest</strong></span>
                </h1>
            </div>
            <div class="col_two_fifth col_last topmargin-sm nobottommargin" data-class-lg="tright" data-class-md="tright" data-class-sm="tright" data-class-xs="center" data-class-xxs="center">
                <asp:Repeater ID="rpt_social" runat="server">
                    <ItemTemplate>
                        <a href="#" target="_blank" style="display: inline-block" id="a_link" runat="server">
                            <i class="i-circled i-light icon-email3" id="i_icon_01" runat="server"></i>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nobottompadding">
        <div class="container clearfix">
            <div class="postcontent bothsidebar ">
                <h3>
                    <%=Lingua.CaricaLingua("lgl_userpost_video")%></h3>
                <div id="portfolio" class="portfolio-1 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item clearfix">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <asp:Repeater ID="rpt_tags" runat="server" OnItemDataBound="rpt_tags_ItemDataBound" OnItemCommand="rpt_tags_ItemCommand">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_tag" runat="server" CommandName="TAG" CssClass="label label-default"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:Repeater> 
                                        <p><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></p>
                                    </div>
                                </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="sidebar ">
                <div class="sidebar-widgets-wrap">
                    <h5 class="hidden">
                        <%=Lingua.CaricaLingua("lgl_userpost_sudime")%></h5>
                    <h4 class="hidden">
                        <asp:Literal ID="ltl_nome" runat="server"></asp:Literal></h4>
                    <h3>
                        What</h3>
                    <p>
                        <asp:Literal ID="ltl_descrizione_short" runat="server"></asp:Literal>
                        <br />
                        <a href="#" class="label label-default" data-toggle="modal" data-target=".what-complete"
                            id="a_leggi_tutto" runat="server">leggi tutto > </a>
                    </p>
                    <div class="modal fade bs-example-modal-lg what-complete" tabindex="-1" role="dialog"
                        aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-body">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            What</h4>
                                    </div>
                                    <div class="modal-body">
                                        <asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar  col_last">
                <div class="sidebar-widgets-wrap">
                    <h3 id="h_addr" runat="server">
                        Where</h3>
                    <p id="p_addr" runat="server">
                        <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal></p>
                    <div class="line small">
                    </div>
                    <h3 id="h_web" runat="server">
                        Web</h3>
                    <p id="p_web" runat="server">
                        <asp:HyperLink ID="lnk_web" runat="server"></asp:HyperLink>
                    </p>
                    <div class="line small">
                    </div>
                    <h3 id="h_email" runat="server">
                        Email</h3>
                    <p id="p_email" runat="server">
                        <a href="" id="a_mail" runat="server">
                            <asp:Literal ID="ltl_mail" runat="server"></asp:Literal>
                        </a>
                    </p>
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
