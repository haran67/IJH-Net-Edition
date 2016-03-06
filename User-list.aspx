<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-list.aspx.vb" Inherits="JazzHub_Web.User_list" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="page-menu">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title">
                    <strong>IJH</strong>&nbsp;<%=Lingua.CaricaLingua("lgl_userlist_title")%>
                    <!--<%=Lingua.CaricaLingua("lgl_userlist_sfoglia")%>-->
                </div>
                <nav>
                    <ul>
                        <li class="current">
                            <asp:LinkButton ID="btn_tutti" runat="server">
                                <%=Lingua.CaricaLingua("lgl_userlist_sfoglia_tutti")%>    
                            </asp:LinkButton>
                        </li>
                        <li>
                            <asp:HyperLink ID="lnk_categoria" runat="server"></asp:HyperLink>
                            <ul>
                                <asp:Repeater ID="rpt_categorie" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <asp:LinkButton ID="btn_categoria" runat="server" CommandName="GO"> 
                                                <asp:Literal ID="ltl_categoria" runat="server"></asp:Literal>
                                            </asp:LinkButton>
                                        </li>    
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </li>
                        <li style="padding-top:5px;">
                            <asp:TextBox ID="txt_ricerca" runat="server" AutoPostBack="true" CssClass="form-control"
                                         Placeholder="Nome/Luogo, poi invio" style="border: none; border-bottom: dotted 1px rgba(255,255,255,.5); background: none; color: #fff;"></asp:TextBox>
                        </li>
                    </ul>
                </nav>
                <div id="page-submenu-trigger">
                    <i class="icon-reorder"></i>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 40px 0">
        <div class="container clearfix">
            <asp:Literal ID="ltl_nessun_risultato" runat="server"></asp:Literal>
            <!-- Portfolio Items
                    ============================================= -->
            <div id="portfolio" class="portfolio-masonry portfolio-6 clearfix">
                <asp:Repeater ID="rpt_user" runat="server">
                    <ItemTemplate>
                        <article class="portfolio-item">
                            <div class="portfolio-image " ID="img_copertina" runat="server">
                                <div>
                                    <img src="images/custom/blank.png">
                                </div>
                                <asp:LinkButton ID="btn_user" CommandName="USER" runat="server">
                                    <div class="portfolio-overlay">
                                        <div class="portfolio-desc">
                                            <h3>
                                                <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                                            </h3>
                                            <span>
                                                <i class="icon-facetime-video" style="color: #fff; position: relative; top: 1px" id="i_expo" runat="server"></i> 
                                                <i class="icon-eye-open" style="color: #fff; position: relative; top: 1px" id="i_view" runat="server"></i> 
                                                <i class="icon-coffee2" style="color: #fff; position: relative; top: 1px" id="i_guest" runat="server"></i>
                                                 | <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal><br>
                                            </span>
                                        </div>

                                    </div>
                                </asp:LinkButton>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="clear"></div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-lg-12">
                    <pager:MesysPager ID="pager" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                        OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="3"
                        Visible="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <!-- Portfolio Script
        ============================================= -->
    <script type="text/javascript">

        function init_js() {
            var $container = $('#portfolio');

            $container.isotope({ transitionDuration: '0.65s' });

            $('#portfolio-shuffle').click(function () {
                $container.isotope('updateSortData').isotope({
                    sortBy: 'random'
                });
            });

            $(window).resize(function () {
                $container.isotope('layout');
            });
        }

        $(document).ready(function () {
            //init_js();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
        });

        function endRequestHandler(sender, args) {
            alert("");
            //init_js();
        }

    </script>
    <!-- Portfolio Script End -->
</asp:Content>
