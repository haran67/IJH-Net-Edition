<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-list.aspx.vb" Inherits="JazzHub_Web.User_list" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title" class="page-title-mini">
		<div class="container clearfix">
            <h1><strong>IJH</strong>&nbsp;<%=Lingua.CaricaLingua("lgl_userlist_title")%></h1>
			<ol class="breadcrumb">
				<li><a href="/Index.aspx"><%=Lingua.CaricaLingua("lgl_userlist_home")%></a></li>
				<li class="active"><%=Lingua.CaricaLingua("lgl_userlist_title")%></li>
			</ol>
		</div>
	</section>
    <div id="page-menu" class="no-sticky">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title">
                    <%=Lingua.CaricaLingua("lgl_userlist_sfoglia")%>
                </div>
                <nav>
                    <ul>
                        <li class="current"><a href="#" data-filter="*"><%=Lingua.CaricaLingua("lgl_userlist_sfoglia_tutti")%></a></li>
                        <asp:Repeater ID="rpt_categorie" runat="server">
                            <ItemTemplate>
                                <li>
                                    <a href="#" data-filter=".pf-" id="a_categoria" runat="server">
                                        <asp:Literal ID="ltl_categoria" runat="server"></asp:Literal>
                                    </a>
                                </li>    
                            </ItemTemplate>
                        </asp:Repeater>
                        <li><a href="#" id="portfolio-shuffle"><i class="icon-random"></i></a></li>
                    </ul>
                </nav>
                <div id="page-submenu-trigger">
                    <i class="icon-reorder"></i>
                </div>
            </div>
        </div>
    </div>
    <!-- #page-title end -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 20px 0">
        <div class="container clearfix">
            <!-- Portfolio Items
                    ============================================= -->
            <div id="portfolio" class="portfolio-5 clearfix">
                <asp:Repeater ID="rpt_user" runat="server">
                    <ItemTemplate>
                        <article class="portfolio-item pf-media pf-" id="art_user" runat="server">
                            <div class="portfolio-image" style="background-color: #222;">
                                <a href="#">
                                <asp:Image ID="img_copertina" runat="server"/>
                                </a>
                                <div class="portfolio-overlay">
                                    <div class="portfolio-desc">
                                        <h3>
                                            <asp:LinkButton ID="btn_user" CommandName="USER" runat="server">
                                            <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                                            </asp:LinkButton>
                                        </h3>
                                        <span>
                                            <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                        </span>
                                    </div>
                                    
                                </div>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="clear"></div>
            <ul class="pagination">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
            <!-- Portfolio Script
                        ============================================= -->
            <script type="text/javascript">

                jQuery(window).load(function () {

                    var $container = $('#portfolio');

                    $container.isotope({ transitionDuration: '0.65s' });

                    $('#page-menu a').click(function () {
                        $('#page-menu li').removeClass('current');
                        $(this).parent('li').addClass('current');
                        var selector = $(this).attr('data-filter');
                        $container.isotope({ filter: selector });
                        return false;
                    });

                    $('#portfolio-shuffle').click(function () {
                        $container.isotope('updateSortData').isotope({
                            sortBy: 'random'
                        });
                    });

                    $(window).resize(function () {
                        $container.isotope('layout');
                    });

                });

            </script>
            <!-- Portfolio Script End -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
