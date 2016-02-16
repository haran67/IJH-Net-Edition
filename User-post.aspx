<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="User-post.aspx.vb" Inherits="JazzHub_Web.User_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-dark" style="padding: 20px 0;background: url('images/profile-cover.jpg') no-repeat top center; background-size: cover">
        <div class="container clearfix">
            <div class="col_three_fifth nobottommargin">
                
                <h1><asp:Literal ID="ltl_nominativo" runat="server"></asp:Literal>
                <span class="visible-xs visible-sm visible-md visible-lg"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></span>
                </h1>
            </div>
            <div class="col_two_fifth col_last nobottommargin" data-class-lg="tright" data-class-md="tright" data-class-sm="tright" data-class-xs="center" data-class-xxs="center">
                <a href="#" style="display: inline-block"><i class="i-circled i-light icon-email3"></i></a>
                <a href="#" style="display: inline-block"><i class="i-circled i-light icon-facebook2"></i></a>
                <a href="#" style="display: inline-block"><i class="i-circled i-light icon-linkedin2"></i></a>
                <a href="#" style="display: inline-block"><i class="i-circled i-light icon-twitter2 norightmargin"></i></a>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nobottompadding">
        <div class="container clearfix">
            <div class="postcontent bothsidebar ">
                    <h3><%=Lingua.CaricaLingua("lgl_userpost_video")%></h3>
                    <div id="portfolio" class="portfolio-1 clearfix">
                        <asp:Repeater ID="rpt_video" runat="server">
                            <ItemTemplate>
                                <article class="portfolio-item clearfix">
                                    <div class="portfolio-image patch-placeholder">
                                        <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                            <asp:Image ID="img_copertina" runat="server" />
                                        </asp:LinkButton>
                                    </div>
                                    <div class="portfolio-desc">
                                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                        <a href="#" class="label label-default">jazz modal</a> <a href="#" class="label label-default">sonas</a>
                                        <p><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></p>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
            </div>
            <div class="sidebar ">
                <div class="sidebar-widgets-wrap">
                    <h5 class="hidden"><%=Lingua.CaricaLingua("lgl_userpost_sudime")%></h5>
                    <h4 class="hidden"><asp:Literal ID="ltl_nome" runat="server"></asp:Literal></h4>
                    <h3>What</h3>
                        <p><asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal><br><a href="#" class="label label-default"  data-toggle="modal" data-target=".what-complete">leggi tutto ></a></p>
                        <div class="modal fade bs-example-modal-lg what-complete" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-body">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">What</h4>
                                        </div>
                                        <div class="modal-body">
                                            <asp:Image ID="img_utente" runat="server" CssClass="rightmargin-sm" data-class-lg="fleft" data-class-md="fleft" data-class-sm="fleft" data-class-xs="fnone nomargin full-width-element" data-class-xxs="fnone nomargin full-width-element" />
<!--                                            <img src="http://lorempixel.com/250/250/people" class="rightmargin-sm">-->
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                            <p class="nobottommargin">Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            <div class="sidebar  col_last">
                <div class="sidebar-widgets-wrap">
                    <h3>Where</h3>
                    <p>Via Marco mastacchi 166 Livorno</p>
                    <div class="line small"></div>
                    <h3>When</h3>
                    <p>dsfs</p>
<!--                <p><a href="" id="a_mail" runat="server"><asp:Literal ID="ltl_mail" runat="server"></asp:Literal></a></p>-->
                    <div class="line small"></div>
                    <h3>Web</h3>
                    <p><a href="">www.gino.it</a></p>
                    <div class="clear"></div>
                    <div class="si-share clearfix hidden">
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
