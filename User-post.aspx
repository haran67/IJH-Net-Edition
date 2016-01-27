<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-medium">
            <div class="container clearfix">
                <h1><asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                <span><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></span>
                </h1>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap">
        <div class="container clearfix">
            <!-- Immagine del profilo
                    ============================================= -->
            <div class="col_three_fifth portfolio-single-image ">
                <asp:Image ID="img_user" runat="server"/>
            </div>
            <!-- .portfolio-single-image end -->
            <!-- Info utente
                    ============================================= -->
            <div class="col_two_fifth portfolio-single-content col_last">
                <!-- Descrizione
                    ============================================= -->
                <div class="fancy-title title-bottom-border">
                    <h2>
                        <%=Lingua.CaricaLingua("lgl_userpost_sudime")%></h2>
                </div>
                <p>
                    <asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal>
                </p>
                <!-- Portfolio Single - Description End -->
                <div class="line">
                </div>
                <!-- Convidisioni
                        ============================================= -->
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
                <!-- Portfolio Single - Share End -->
            </div>
            <!-- .portfolio-single-content end -->
            <div class="clear">
            </div>
            <div class="fancy-title title-dotted-border">
                <h3>
                    <%=Lingua.CaricaLingua("lgl_userpost_video")%>
                </h3>
            </div>
            <asp:Repeater ID="rpt_video" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="feature-box center media-box fbox-bg">
                            <div class="fbox-media">
                                <asp:Image ID="img_copertina" runat="server"/>
                            </div>
                            <div class="fbox-desc">
                                <h3>
                                    <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                    <span class="subtitle">
                                        <asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal>
                                    </span>
                                </h3>
                                <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                    <i class="icon-line-play"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
