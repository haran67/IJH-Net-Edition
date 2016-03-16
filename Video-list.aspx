<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Video-list.aspx.vb" Inherits="JazzHub_Web.Video_list" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="page-menu">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title hidden">
                    <strong>IJH</strong>&nbsp;<%=Lingua.CaricaLingua("lgl_videolist_title")%>
                </div>
                <nav>
                    <ul>
                        <li><asp:LinkButton id="lnk_categorie_tutti" runat="server"><%=Lingua.CaricaLingua("lgl_videolist_sfoglia_tutti")%></asp:LinkButton> </li>
                        <li>
                            <asp:HyperLink ID="lnk_categoria" runat="server"></asp:HyperLink>
                            <ul>
                                <asp:Repeater ID="rpt_categorie" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <asp:LinkButton id="lnk_categorie" runat="server" CommandName="CAT">
                                                <asp:Literal ID="ltl_categoria" runat="server"></asp:Literal>
                                            </asp:LinkButton>
                                        </li>    
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </li>
                        <li style="padding-top:5px;">
                            <asp:TextBox ID="txt_ricerca" runat="server" AutoPostBack="true" CssClass="form-control custom-input"
                                Placeholder="Titolo/artista, poi invio"></asp:TextBox>
                        </li>
                    </ul>
                </nav>
<!--                <div id="page-submenu-trigger"><i class="icon-reorder"></i></div>-->
            </div>
        </div>
    </div>
    <!-- #page-title end -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap standard-portfolio alt" style="padding: 40px 0">
        <div class="container center clearfix">
            <h4 style="font-weight: 400;" class="color">Video</h4>
            <div class="divider divider-rounded divider-center divider-custom"><i class="icon-line-play" style="background-color: #e6e6e6"></i></div>
            <h4 style="font-weight: 400;" class="color"><asp:Literal ID="ltl_nessun_risultato" runat="server"></asp:Literal></h4>
<!--            <div class="postcontent">-->
                
                <div id="portfolio" class="portfolio portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item">
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <div class="goto-video"><i class="icon-line-play"></i></div>
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
                                    <div class="portfolio-desc">
                                        <h3 style="max-height: 2.5em; overflow: hidden"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span style="max-height: 1.85em; overflow: hidden"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
                                    </div>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="clear"></div>
                <div class="row" style="margin-top:10px;">
                    <div class="col-lg-12">
                        <pager:MesysPager ID="pager" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                            OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="3"
                            Visible="false" />
                    </div>
                </div>
<!--            </div>-->
            <!-- Portfolio Script
                        ============================================= -->
            <script type="text/javascript">

            </script>
            <!-- Portfolio Script End -->
            
<!--
            <div class="sidebar col_last">
                <div class="sidebar-widgets-wrap">
                    <h3>Cerca per Tag</h3>
                    <p>
                        <asp:Repeater ID="rpt_tags" runat="server" OnItemDataBound="rpt_tags_ItemDataBound" OnItemCommand="rpt_tags_ItemCommand">
                            <ItemTemplate>
                                <asp:LinkButton ID="btn_tag" runat="server" CommandName="TAG" CssClass="label label-primary"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:Repeater> 
                    </p>
                    <p class="hidden">
                        <a href="#"jazz mdal <span class="badge">1200</span></a>
                        <a href="#"jazz mdal <span class="badge">120</span></a> 
                        <a href="#"jazz mdal <span class="badge">1100</span></a>
                        <a href="#"jazz mdal <span class="badge">12</span></a>
                    </p>
                </div>
            </div>
-->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            var $container = $('.portfolio');
            $container.isotope({
                transitionDuration: '0.25s'
            });
            
            $(window).resize(function () {
                $container.isotope('layout');
                $container_expo.isotope('layout');
            });
        }
    </script>
</asp:Content>
