<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-dark" style="padding: 100px 0;background: url('http://sviluppo.mesys.it/Repository/JazzHub_Web/Utenti/16/pub/270120161642_original.jpg') no-repeat center center; background-size: cover" >
            <div class="container clearfix">
                <asp:Image ID="img_utente" runat="server" style="height: 60px; width: 60px; float: left; margin-right: 20px;" data-class-lg="nothidden" data-class-md="nothidden" data-class-sm="nothidden" data-class-xs="hidden" data-class-xxs="hidden" />
                <h1><asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                <span><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></span>
                </h1>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nobottompadding">
        <div class="container clearfix">
<!--
            <div class="col_two_fifth portfolio-single-image">
                <asp:Image ID="img_user" runat="server"/>
            </div>
-->
            <div class="col_full portfolio-single-content">
                <div class="col_one_fifth nobottommargin">
                    <h2>Who</h2>
                    <h2 class="hidden"><%=Lingua.CaricaLingua("lgl_userpost_sudime")%></h2>
                </div>
                <div class="col_four_fifth col_last nobottommargin">
                    <h2><asp:Literal ID="ltl_nome" runat="server"></asp:Literal></h2>
                </div>
                <div class="line" style="margin-bottom: 20px !important;"></div>
                <div class="col_one_fifth nobottommargin">
                    <h2>What</h2>
                </div>
                <div class="col_four_fifth col_last nobottommargin">
                    <p><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal> </p>
                </div>   
                    <div class="line" style="margin-bottom: 20px !important;"></div>
                <div class="col_one_fifth nobottommargin hidden">
                    <h2>Where</h2>
                </div>
                <div class="col_four_fifth col_last nobottommargin hidden">
                    <p>Via Marco mastacchi 166 Livorno</p>
                </div>
                    <div class="line" style="margin-bottom: 20px !important;"></div>
                <div class="col_one_fifth nobottommargin hidde">
                    <h2>When</h2>
                </div>
                <div class="col_four_fifth col_last nobottommargin hidden">
                    <p>dsfs</p>
                </div>        
                    <div class="line" style="margin-bottom: 20px !important;"></div>
                <div class="col_one_fifth nobottommargin">
                    <h2>Email</h2>
                </div>
                <div class="col_four_fifth col_last nobottommargin">
                    <p><a href="" id="a_mail" runat="server"><asp:Literal ID="ltl_mail" runat="server"></asp:Literal></a></p>
                </div>
                <div class="line" style="margin-bottom: 20px !important;"></div>
                <div class="col_one_fifth nobottommargin hidden">
                    <h2>Web</h2>
                </div>
                <div class="col_four_fifth col_last nobottommargin hidden">
                    <p><a href="">www.gino.it</a></p>
                </div>
                <div class="clear"></div>
                <div class="si-share clearfix">
                    <span><%=Lingua.CaricaLingua("lgl_userpost_contatti")%></span>
                    <div>
                        <asp:Repeater ID="rpt_social" runat="server">
                            <ItemTemplate>
                                <a href="#" target="_blank" class="social-icon si-borderless si-facebook" id="a_link" runat="server">
                                    <i class="icon-facebook" id="i_icon_01" runat="server"></i>
                                    <i class="icon-facebook" id="i_icon_02" runat="server"></i>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        <div class="section alt nobottommargin">
            <div class="container clearfix">
                <h3><%=Lingua.CaricaLingua("lgl_userpost_video")%></h3>
                <div id="portfolio" class="portfolio-3 clearfix">
                    <asp:Repeater ID="rpt_video" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item">
                                <div class="portfolio-image">
                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                        <asp:Image ID="img_copertina" runat="server" />
                                    </asp:LinkButton>
                                </div>
                                <div class="portfolio-desc" style="background-color: #fff; padding: 15px;">
                                    <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                    <span class="hidden"><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></span>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
