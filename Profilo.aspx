<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Profilo.aspx.vb" Inherits="JazzHub_Web.Profilo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title">
        <div class="container clearfix">
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal> | <small>Il tuo profilo</small></h1>
            <ol class="breadcrumb">
                <li>
                    <asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout">
                        &nbsp;Esci
                    </asp:LinkButton>
                </li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="">
        <div class="container clearfix">
            <div class="col_full">
                <div class="tabs tabs-tb tabs-alt customjs clearfix" id="tabs-customjs">
                    <div class="tab-container" id="div_espositore" runat="server">
                        <div class="tab-content clearfix" id="tab-customjs-1">
                            <div class="fancy-title title-dotted-border">
                                <h3>Attivit&aacute;</h3>
                            </div>
                            <div class="col_one_fourth center">
                                <div class="feature-box fbox-center fbox-bg fbox-light">
                                    <div class="fbox-icon">
                                        <span><i class="icon-eye"></i></span>
                                    </div>
                                    <h3 class="counter counter-large">
                                        <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500"></span>
                                    </h3>
                                    <h5>visualizzazioni</h5>
                                </div>
                            </div>
                            <div class="col_one_fourth center">
                                <div class="feature-box fbox-center fbox-bg fbox-light">
                                    <div class="fbox-icon">
                                        <span><i class="icon-thumbs-up2"></i></span>
                                    </div>
                                    <h3 class="counter counter-large"><span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500"></span></h3>
                                    <h5>likes</h5>
                                </div>
                            </div>
                            <div class="col_half center col_last">
                                <asp:LinkButton ID="btn_aggiungi" runat="server" CssClass="button button-rounded nomargin">
                                    Carica un nuovo video <i class="icon-arrow-right2"></i>
                                </asp:LinkButton>
                            </div>
                            <div class="clear"></div>
                            <div class="fancy-title title-dotted-border">
                                <h3>I tuoi video</h3>
                            </div>
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
                            <asp:Repeater ID="rpt_video" runat="server">
                                <ItemTemplate>
                                    <div class="col_one_third">
                                        <div class="feature-box center media-box fbox-bg">
                                            <div class="fbox-media">
                                                <video width="100%" controls>
                                                    <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                                    Your browser does not support the video tag.
                                                </video>
                                            </div>
                                            <div class="fbox-desc">
                                                <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                                <span class="subtitle">
                                                    <asp:Literal ID="ltl_descrizione" runat="server">0</asp:Literal>
                                                </span>
                                                <div class="divider divider-center"><i class="icon-circle"></i></div>
                                                <div class="col_half nobottommargin text-left" style="font-size: 20px;">
                                                    <asp:LinkButton ID="btn_delete" runat="server" CssClass="label label-danger" CommandName="DEL">
                                                        <span class="icon-line-trash"></span>
                                                    </asp:LinkButton>
                                                    &nbsp;
                                                    <asp:LinkButton ID="btn_modifica" runat="server" CssClass="label label-default" CommandName="MOD">
                                                        <span class="icon-edit"></span>
                                                    </asp:LinkButton>
                                                </div> 
                                                <div class="col_half col_last nobottommargin text-right" style="font-size: 20px;">
                                                    <span class="label label-success"><asp:Literal ID="ltl_visualizzazioni" runat="server">0</asp:Literal>&nbsp;<span class="icon-thumbs-up"></span></span>
                                                    <span class="label label-primary"><asp:Literal ID="ltl_like" runat="server">0</asp:Literal>&nbsp;<span class="icon-eye"></span></span>
                                                    <span class="label label-default"><asp:Literal ID="ltl_commenti" runat="server">0</asp:Literal>&nbsp;<span class="icon-comment"></span></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="tab-container" id="div_visitatore" runat="server">
                        <div class="fancy-title title-dotted-border">
                            <h3>La tua selezione di video</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
