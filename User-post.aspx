<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-dark" style="padding: 20px 0;background: url('images/profile-cover.jpg') no-repeat top center; background-size: cover">
        <div class="container clearfix" data-height-lg="500" data-height-md="500" data-height-sm="400" data-height-xs="350" data-height-xxs="300">
            <div class="profile-header">
                <asp:Image ID="img_utente" runat="server" data-class-lg="fleft" data-class-md="fleft" data-class-sm="fleft" data-class-xs="divcenter" data-class-xxs="divcenter" />
                <h1 class="topmargin-sm text-shadow" style="margin-top: 50px;">
                    <asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                    <span class="visible-xs visible-sm visible-md visible-lg" style="font-weight: 300"><i class="icon-facetime-video" style="color: #fff"></i> <i class="icon-eye-open" style="color: #fff"></i> <i class="icon-coffee2" style="color: #fff"></i> | <asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></span>
                </h1>
                <a href="#" target="_blank" style="display: inline-block">
                    <i class="i-circled i-light i-small icon-facebook"></i>
                </a>
                <a href="#" target="_blank" style="display: inline-block">
                    <i class="i-circled i-light i-small icon-twitter"></i>
                </a>
                <a href="#" target="_blank" style="display: inline-block">
                    <i class="i-circled i-light i-small icon-linkedin"></i>
                </a>
                <asp:Repeater ID="rpt_social" runat="server">
                    <ItemTemplate>
                        <a href="#" target="_blank" style="display: inline-block" id="a_link" runat="server">
                            <i class="i-circled i-light i-small icon-email3" id="i_icon_01" runat="server"></i>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nobottompadding alt">
        <div class="container clearfix">
            <div class="postcontent col_last standard-portfolio">
                <h3><i class="i-circled i-medium-custom icon-play" style="background-color: #557d75;"></i><%=Lingua.CaricaLingua("lgl_userpost_video")%></h3>
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item clearfix box-shadow-custom">
                                <a href="javascript:void()" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="" aria-describedby="popover787516" style="position: absolute; top: 10px; right: 10px;"><i class="icon-tag"></i></a>
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
<!--
                                        <asp:Repeater ID="rpt_tags" runat="server" OnItemDataBound="rpt_tags_ItemDataBound" OnItemCommand="rpt_tags_ItemCommand">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_tag" runat="server" CommandName="TAG" CssClass="btn btn-default btn-xs"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:Repeater> 
-->
                                        <span><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></span>
                                    </div>
                                </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                    <script type="text/javascript">
                        $('[data-toggle=popover]').popover();
                    </script>
            </div>
            <div class="sidebar">
                <div class="sidebar-widgets-wrap">
                    <h5 class="hidden"><%=Lingua.CaricaLingua("lgl_userpost_sudime")%></h5>
                    <h4 class="hidden"><asp:Literal ID="ltl_nome" runat="server"></asp:Literal></h4>
                    <h3><i class="i-circled i-medium-custom icon-user4" style="background-color: #557d75;"></i>Who</h3>
                    <p class="panel-custom box-shadow-custom">
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
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">Who</h4>
                                    </div>
                                    <div class="modal-body">
                                        <asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        
                    <h3><i class="i-circled i-medium-custom icon-tags" style="background-color: #557d75;"></i>What</h3>
                    <p class="panel-custom box-shadow-custom">
                        <a class="label label-primary" href="#">Composizione originale</a>

                        <a class="label label-primary" href="#">Latin jazz</a>

                        <a class="label label-primary" href="#">Nu jazz</a>

                        <a class="label label-primary" href="#">Chitarra acustica</a>

                        <a class="label label-primary" href="#">Fisarmonica</a>

                        <a class="label label-primary" href="#">Organo Hammond</a>

                        <a class="label label-primary" href="#">Pianoforte</a>
                    </p>
                        
                    <h3 id="h_addr" runat="server"><i class="i-circled i-medium-custom icon-map-marker" style="background-color: #557d75;"></i>Where</h3>
                    <p id="p_addr" runat="server" class="panel-custom box-shadow-custom">
                        <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal>
                    </p>
                        
                    <h3 id="h_email" runat="server"><i class="i-circled i-medium-custom icon-email3" style="background-color: #557d75;"></i>Email</h3>
                    <p id="p_email" runat="server" class="panel-custom box-shadow-custom">
                        <a href="" id="a_mail" runat="server"> <asp:Literal ID="ltl_mail" runat="server"></asp:Literal></a>
                    </p>
                        
                    <h3 id="h_web" runat="server"><i class="i-circled i-medium-custom icon-sitemap" style="background-color: #557d75;"></i>Web</h3>
                    <p id="p_web" runat="server" class="panel-custom box-shadow-custom">
                        <asp:HyperLink ID="lnk_web" runat="server"></asp:HyperLink>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
