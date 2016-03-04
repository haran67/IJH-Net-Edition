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
                    <i class="i-circled i-small icon-facetime-video nomargin nofloat inline-block" id="i_expo" runat="server"></i> 
                    <i class="i-circled i-small icon-eye-open nomargin nofloat inline-block" id="i_view" runat="server"></i> 
                    <i class="i-circled i-small icon-coffee2 nomargin nofloat inline-block" id="i_guest" runat="server"></i>
                </div>
                <h1 class="text-shadow">
                    <asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                    <span class="visible-xs visible-sm visible-md visible-lg">
                        <strong style="font-weight: 400"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></strong> - citt&agrave;
                    </span>
                </h1>
                <div class="noheight user-divider"></div>
                <div class="user-profile-head-content">
                    <p class="article nomargin text-shadow"><asp:Literal ID="ltl_descrizione_full" runat="server"></asp:Literal></p>
                            <div style="height: 30px;"></div>
<!--
                    <asp:Repeater ID="rpt_social" runat="server">
                        <ItemTemplate>
                            <a href="#" target="_blank" style="display: inline-block; margin-left: 11px;" id="a_link" runat="server">
                                <i class="i-circled i-light i-small icon-email3 nomargin" id="i_icon_01" runat="server"></i>
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
--> 
                    <h3 class="user-social">
                        <a href="#" target="_blank">
                            <i class="icon-world nomargin"></i>
                        </a>
                            <a href="#" target="_blank">
                            <i class="icon-email3 nomargin"></i>
                        </a>
                            <a href="#" target="_blank">
                            <i class="icon-facebook nomargin"></i>
                        </a>
                            <a href="#" target="_blank">
                            <i class="icon-twitter nomargin"></i>
                        </a>
                            <a href="#" target="_blank">
                            <i class="icon-linkedin nomargin"></i>
                        </a>
                    </h3>
                </div>
            </div>
        </div>
    </section>
    <div class="section nomargin nopadding profile-submenu" style="background: #3C4B5E;">
        <div class="container center clearfix">
            <a href="#" class="active">Video</a>
            <a href="#">When</a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap ">
        <div class="container clearfix">
            
<!--
            <div>
                <h5 class="hidden"><%=Lingua.CaricaLingua("lgl_userpost_sudime")%></h5>
                <h4 class="hidden"><asp:Literal ID="ltl_nome" runat="server"></asp:Literal></h4>
                <p>
                    <br />
                    <a href="#" class="label label-default" data-toggle="modal" data-target=".what-complete" id="a_leggi_tutto" runat="server">leggi tutto > </a>
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
                                    <asp:Literal ID="ltl_descrizione_short" runat="server"></asp:Literal>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
-->
<!--
            <div>
                <h3 id="h_email" runat="server">Email</h3>
                <p id="p_email" runat="server">
                    <a href="" id="a_mail" runat="server"> <asp:Literal ID="ltl_mail" runat="server"></asp:Literal></a>
                </p>

                <h3 id="h_web" runat="server">Web</h3>
                <p id="p_web" runat="server">
                    <asp:HyperLink ID="lnk_web" runat="server"></asp:HyperLink>
                </p>
            </div>
            <div>
-->
<!--                <h3 id="h_video" runat="server"><%=Lingua.CaricaLingua("lgl_userpost_video")%></h3>-->
            <div id="portfolio" class="portfolio-<%=pf_num%> clearfix">
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
                                <span><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></span>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            
            <div>
<!--                <h3 id="h_when" runat="server"><i class="i-circled i-medium-custom icon-sitemap" style="background-color: #557d75;"></i>When</h3>-->
                <div id="p_when" runat="server" class="date-list center">
                    <asp:Repeater ID="rpt_when" runat="server">
                        <ItemTemplate>
                            <div class="date-list">
                                <h4 class="nomargin"><asp:Literal ID="ltl_when_luogo" runat="server"></asp:Literal><br><small><asp:Literal ID="ltl_when_quando" runat="server"></asp:Literal></small></h4>
                                <p class="nomargin"><asp:Literal ID="ltl_when_titolo" runat="server"></asp:Literal></p>
                            </div>
                        </ItemTemplate> 
                    </asp:Repeater> 
                </div>
            </div>
<!--
            <div>
                <h3 id="h_tag" runat="server">What</h3>
                <p id="p_tag" runat="server">
                    <asp:Repeater ID="rpt_tags" runat="server" OnItemDataBound="rpt_tags_ItemDataBound" OnItemCommand="rpt_tags_ItemCommand">
                        <ItemTemplate>
                            <asp:LinkButton ID="btn_tag" runat="server" CommandName="TAG" CssClass="label label-primary"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:Repeater>
                </p>
            </div>
-->
<!--
            <div>
                <h3 id="h_addr" runat="server">Where</h3>
                <p id="p_addr" runat="server">
                    <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal>
                </p>
            </div>
-->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript" src="/js/readmore.js"></script>
    <script>
        $('.article').readmore({
            speed: 750,
            collapsedHeight: 150,
            moreLink: '<a href="#" style="color: #fff;">Leggi tutto</a>',
            lessLink: '<a href="#" style="color: #fff;">Chiudi</a>'
        });
    </script>
</asp:Content>
