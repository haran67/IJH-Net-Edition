<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Video-admin.aspx.vb" Inherits="JazzHub_Web.Video_admin" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="page-menu no-sticky">
        <div id="page-menu-wrap">
            <div class="container clearfix">
                <div class="menu-title">
                    Elenco dei video <span>Caricati</span>
                </div>
            </div>
        </div>
    </div>
    <!-- #page-title end -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
        visible="false">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
            x
        </button>
        <i class="fa-lg fa fa-warning"></i><strong>Attenzione!</strong>
        <asp:Literal ID="ltl_messaggio_ko" runat="server"></asp:Literal>
    </div>
    <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server"
        visible="false">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
            x
        </button>
        <strong>
            <asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal></strong>
    </div>
    <div class="content-wrap spray-texture " style="padding: 20px 0">
        <div class="container clearfix">
            <asp:Repeater ID="rpt_video" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4">
                        <div class="feature-box center media-box fbox-bg">
                            <div class="fbox-media">
                                <video width="100%" controls id="video_span" runat="server">
                                    <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                    Your browser does not support the video tag.
                                </video>
                                <asp:Image ID="img_copertina" runat="server"/>
                            </div>
                            <div class="fbox-desc">
                                <h3><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h3>
                                <span class="subtitle">
                                    <asp:Literal ID="ltl_titolo" runat="server">0</asp:Literal>
                                </span>
                                <div class="divider divider-center"><i class="icon-circle"></i></div>
                                <div class="col_full nobottommargin text-left" style="font-size: 20px;">
                                    <asp:LinkButton ID="btn_pubblica" CommandName="PUB" CssClass="label label-default" runat="server">
                                        PUBBLICA
                                    </asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btn_preview" runat="server" CssClass="label label-default" CommandName="PVW">
                                        GEN. PREVIEW
                                    </asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btn_play" CommandName="VIDEO" CssClass="label label-success" runat="server">
                                        <span class="icon-line-play"></span>
                                    </asp:LinkButton>
                                </div> 
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="row">
                <div class="col-lg-12">
                    <pager:MesysPager ID="pager" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                        OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="6"
                        Visible="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
