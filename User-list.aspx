<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-list.aspx.vb" Inherits="JazzHub_Web.User_list" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="page-menu" class="box-shadow-custom hidden">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title hidden">
                    <strong>IJH</strong>&nbsp;<%=Lingua.CaricaLingua("lgl_userlist_title")%>
                    <%=Lingua.CaricaLingua("lgl_userlist_sfoglia")%>
                </div>
                <nav class="clearfix">
                    <ul class="clearfix">
                        <li>
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
                            <asp:TextBox ID="txt_ricerca" runat="server" AutoPostBack="true" CssClass="form-control custom-input"
                                         Placeholder="nome o luogo, poi invio" style="width:250px;"></asp:TextBox>
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
    <div class="content-wrap alt" style="padding: 40px 0">
        <div class="container center clearfix">
            <h4 class="color">People</h4>
            <div class="divider divider-rounded divider-center divider-custom">
                <asp:LinkButton ID="btn_search_guest" runat="server">
                    <i class="icon-fontello-guest" style="background-color: #e6e6e6;" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Guest" id="icon_guest" runat="server"></i>
                </asp:LinkButton>
                <asp:LinkButton ID="btn_search_expo" runat="server">
                    <i class="icon-fontello-expo" style="background-color: #e6e6e6;" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Expo" id="icon_expo" runat="server"></i>
                </asp:LinkButton>
                <asp:LinkButton ID="btn_search_visitor" runat="server">
                    <i class="icon-fontello-visitor" style="background-color: #e6e6e6;" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Visitor" id="icon_visit" runat="server"></i>
                </asp:LinkButton>
                <asp:LinkButton ID="btn_search_all" runat="server">
                    <i class="icon-fontello-asterisk" style="background-color: #e6e6e6;" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="All" id="i1" runat="server"></i>
                </asp:LinkButton>
            </div>
<!--            <div class="divider divider-rounded divider-center divider-custom"><i class="icon-user4" style="background-color: #e6e6e6"></i></div>-->
            <h4 style="font-weight: 400;" class="color"><asp:Literal ID="ltl_nessun_risultato" runat="server"></asp:Literal></h4>
            <!-- Portfolio Items
                    ============================================= -->
            <div id="portfolio" class="portfolio-masonry portfolio-6 clearfix">
                <asp:Repeater ID="rpt_user" runat="server">
                    <ItemTemplate>
                        <article class="portfolio-item portfolio-user">
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
                                                <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal><br>
                                            </span>
                                        </div>
                                        <div class="user-profile-type user-profile-type-list">
                                            <i class="i-circled i-small nomargin nofloat inline-block box-shadow-custom icon-fontello-expo" id="i_expo" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Expo"></i> 
                                            <i class="i-circled i-small nomargin nofloat inline-block box-shadow-custom icon-fontello-visitor" id="i_view" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Visitor"></i> 
                                            <i class="i-circled i-small nomargin nofloat inline-block box-shadow-custom icon-fontello-guest" id="i_guest" runat="server" data-container="body" data-trigger="hover" data-toggle="popover" data-placement="bottom" data-content="Guest"></i>
                                        </div>
                                    </div>
                                </asp:LinkButton>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="clear"></div>
            <div class="col_full">
                <pager:MesysPager ID="pager" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                    OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="3"
                    Visible="false" />
                <table cellpadding="3" cellspacing="1" border="0" class="PagerContainerTable hidden">
                    <tbody><tr>
                        <td class="PagerInfoCell">Pagina 1 di 2</td><td class="PagerCurrentPageCell"><span class="PagerHyperlinkStyle"><strong> 1 </strong></span></td><td class="PagerOtherPageCells"><a class="PagerHyperlinkStyle" href="javascript:__doPostBack('ctl00$content$pager','2')"> 2 </a></td><td class="PagerOtherPageCells"><a class="PagerHyperlinkStyle" href="javascript:__doPostBack('ctl00$content$pager','2')" title=" Avanti alla pagina 2"> &gt; </a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <!-- Portfolio Script
        ============================================= -->
    <script type="text/javascript">
        $('[data-toggle=popover]').popover();
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
