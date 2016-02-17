<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Video-list.aspx.vb" Inherits="JazzHub_Web.Video_list" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-mini">
		<div class="container clearfix">
            <h1><strong>IJH</strong>&nbsp;<%=Lingua.CaricaLingua("lgl_videolist_title")%></h1>
		</div>
	</section>
    <div id="page-menu">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title">
                    <%=Lingua.CaricaLingua("lgl_videolist_sfoglia")%>
                </div>
                <nav>
                    <ul>
                        <li class="current"><a href="#" data-filter="*"><%=Lingua.CaricaLingua("lgl_videolist_sfoglia_tutti")%></a></li>
                        <li>
                            <a href="#">Categoria</a>
                            <ul>
                                <asp:Repeater ID="rpt_categorie" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <a href="#" data-filter=".pf-" id="a_categoria" runat="server">
                                                <asp:Literal ID="ltl_categoria" runat="server"></asp:Literal>
                                            </a>
                                        </li>    
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
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
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item box-shadow-custom" id="art_video" runat="server">
                                <div class="portfolio-image patch-placeholder">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <video width="100%">
                                            <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                            Your browser does not support the video tag.
                                        </video>
                                    </asp:LinkButton>
                                </div>
                                <div class="portfolio-desc" style="background-color: #fff; padding: 15px;">
                                    <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                    <span><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></span>
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

                jQuery(window).load(function () {

                    var $container = $('#portfolio');

                    $container.isotope({ transitionDuration: '0.65s' });

//                    $('#page-menu a').click(function () {
//                        $('#page-menu li').removeClass('current');
//                        $(this).parent('li').addClass('current');
//                        var selector = $(this).attr('data-filter');
//                        $container.isotope({ filter: selector });
//                        return false;
//                    });
//
//                    $('#portfolio-shuffle').click(function () {
//                        $container.isotope('updateSortData').isotope({
//                            sortBy: 'random'
//                        });
//                    });

                    $(window).resize(function () {
                        $container.isotope('layout');
                    });

                });

            </script>
            <!-- Portfolio Script End -->
            
            <div class="sidebar col_last">
                <div class="sidebar-widgets-wrap">
                    <h3>Cerca per Tag</h3>
                    <p>
                        <a href="#" class="label label-primary">jazz mdal</a> <a href="#" class="label label-primary">jazz modal</a> 
                        <a href="#" class="label label-primary">jazz dfasfd</a> <a href="#" class="label label-primary">jazz dd</a> 
                        <a href="#" class="label label-primary">jazz moddal</a> <a href="#" class="label label-primary">jazz sdfsfdfs</a> 
                        <a href="#" class="label label-primary">jazz mosdfddal</a> <a href="#" class="label label-primary">jazz moddal</a> 
                        <a href="#" class="label label-primary">jazz sdfd</a> <a href="#" class="label label-primary">jazz ss</a> 
                        
                    </p>
                    <p>
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
