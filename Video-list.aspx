<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Video-list.aspx.vb" Inherits="JazzHub_Web.Video_list" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title">
		<div class="container clearfix">
            <h1><strong>IJH</strong><%=Lingua.CaricaLingua("lgl_videolist_title")%></h1>
			<ol class="breadcrumb">
				<li><a href="/Index.aspx"><%=Lingua.CaricaLingua("lgl_videolist_home")%></a></li>
				<li class="active"><%=Lingua.CaricaLingua("lgl_videolist_title")%></li>
			</ol>
		</div>
	</section>
    <div id="page-menu" class="no-sticky">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title">
                    <%=Lingua.CaricaLingua("lgl_videolist_sfoglia")%>
                </div>
                <nav>
                    <ul>
                        <li class="current"><a href="#" data-filter="*"><%=Lingua.CaricaLingua("lgl_videolist_sfoglia_tutti")%></a></li>
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
    <div class="content-wrap spray-texture " style="padding: 20px 0">
        <div class="container clearfix">
            <div class="clear">
            </div>
            <!-- Portfolio Items
                    ============================================= -->
            <div id="portfolio" class="portfolio-3 clearfix">
                <asp:Repeater ID="rpt_video" runat="server">
                    <ItemTemplate>
                        <article class="portfolio-item pf-media pf-" id="art_video" runat="server">
                            <div class="portfolio-image" style="background-color: #222;">
                                <video width="100%">
                                    <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                    Your browser does not support the video tag.
                                </video>
                                <div class="portfolio-overlay">
                                    <div class="portfolio-desc">
                                        <h3 style="background-color:transparent;">
                                            <asp:Literal ID="ltl_utente" runat="server"></asp:Literal><br><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                        </h3>
                                    </div>
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <i class="icon-line-play"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
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
