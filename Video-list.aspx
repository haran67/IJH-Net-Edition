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
                <div class="menu-title">
                    <strong>IJH</strong>&nbsp;<%=Lingua.CaricaLingua("lgl_videolist_title")%>
                </div>
                <nav>
                    <ul>
                        <li class="current"><asp:LinkButton id="lnk_categorie_tutti" runat="server"><%=Lingua.CaricaLingua("lgl_videolist_sfoglia_tutti")%></asp:LinkButton> </li>
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
                            <asp:TextBox ID="txt_ricerca" runat="server" AutoPostBack="true" CssClass="form-control"
                                Placeholder="Titolo/artista, poi invio" style="border: none; border-bottom: dotted 1px rgba(255,255,255,.5); background: none; color: #fff;"></asp:TextBox>
                        </li>
                    </ul>
                </nav>
                <div id="page-submenu-trigger"><i class="icon-reorder"></i></div>
            </div>
        </div>
    </div>
    <!-- #page-title end -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap standard-portfolio alt">
        <div class="container clearfix">
            <div class="postcontent">
                <asp:Literal ID="ltl_nessun_risultato" runat="server"></asp:Literal>
                <div id="portfolio" class="portfolio-3 portfolio-masonry clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item box-shadow-custom">
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
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
            </div>
            <!-- Portfolio Script
                        ============================================= -->
            <script type="text/javascript">

            </script>
            <!-- Portfolio Script End -->
            
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
                        <a href="#" class="label label-primary">jazz mdal</a> + 1200<br>
                        <a href="#" class="label label-primary">bepop</a> + 550<br>
                        <a href="#" class="label label-primary">sassofono</a> + 200<br>
                        <a href="#" class="label label-primary">piano</a> + 20<br>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
