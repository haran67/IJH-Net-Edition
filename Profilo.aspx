<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Profilo.aspx.vb" Inherits="JazzHub_Web.Profilo" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title" class="page-title-mini hidden">
        <div class="container clearfix">
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h1>
            <ol class="breadcrumb hidden">
                <li><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap">
        <div class="container clearfix">
            <div class="col_full">
<!--
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
-->
                    
                    <div id="div_espositore" runat="server">
                        <ul class="nav nav-tabs" style="margin-bottom: 30px;">
                            <li class="active"><asp:LinkButton ID="btn_resume" runat="server">Riepilogo</asp:LinkButton></li>
                            <li><a href="#">Gestione video</a></li>
                            <li><asp:LinkButton ID="btn_modifica" runat="server">Modifica profilo</asp:LinkButton> </li>
                        </ul>
                        <div class="clearfix"></div>
                        <div class="col_one_fourth center">
                            <div class="feature-box fbox-center fbox-bg fbox-light">
                                <div class="fbox-icon">
                                    <span><i class="icon-eye"></i></span>
                                </div>
                                <h3 class="counter counter-large">
                                    <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_vis" runat="server"></span>
                                </h3>
                                <h5>Visualizzazioni</h5>
                            </div>
                        </div>
                        <div class="col_one_fourth center">
                            <div class="feature-box fbox-center fbox-bg fbox-light">
                                <div class="fbox-icon">
                                    <span><i class="icon-thumbs-up2"></i></span>
                                </div>
                                <h3 class="counter counter-large"><span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_lik" runat="server"></span></h3>
                                <h5>likes</h5>
                            </div>
                        </div>
                        <div class="list-group col_half col_last">
                            <h4>Dettaglio attivit&agrave; sui video</h4>
                            <div class="list-group-item clearfix">
                                <a href="#" class="fleft" style="display: inline-block">Titolo #1</a>
                                <span class="fright" style="display: inline-block">
                                    <span class="label label-success">16 <span class="icon-thumbs-up"></span></span>
                                    <span class="label label-primary">14 <span class="icon-eye"></span></span>
                                    <span class="label label-default">0 <span class="icon-comment"></span></span>
                                </span>
                            </div>
                            <div href="#" class="list-group-item clearfix">
                                <a href="#" class="fleft" style="display: inline-block">Titolo #2</a>
                                <span class="fright" style="display: inline-block">
                                    <span class="label label-success">16 <span class="icon-thumbs-up"></span></span>
                                    <span class="label label-primary">14 <span class="icon-eye"></span></span>
                                    <span class="label label-default">0 <span class="icon-comment"></span></span>
                                </span>
                            </div>
                            <div href="#" class="list-group-item clearfix">
                                <a href="#" class="fleft" style="display: inline-block">Titolo #3</a>
                                <span class="fright" style="display: inline-block">
                                    <span class="label label-success">16 <span class="icon-thumbs-up"></span></span>
                                    <span class="label label-primary">14 <span class="icon-eye"></span></span>
                                    <span class="label label-default">0 <span class="icon-comment"></span></span>
                                </span>
                            </div>
                            <div class="bottommargin-sm"></div>
                            <asp:LinkButton ID="btn_aggiungi" runat="server" CssClass="button button-rounded nomargin">
                                Gestisci i tuoi video <i class="icon-arrow-right2"></i>
                            </asp:LinkButton>

                        </div>
                            
                        <div class="clear"></div>
                        <div class="fancy-title title-dotted-border">
                            <h3>I tuoi video</h3>
                        </div>
<!--
                        <asp:Repeater ID="rpt_video" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4">
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
                                                <asp:LinkButton ID="btn_video" CommandName="VIDEO" CssClass="label label-success" runat="server">
                                                    <span class="icon-line-play"></span>
                                                </asp:LinkButton>
                                                &nbsp;
                                                <asp:LinkButton ID="btn_modifica" runat="server" CssClass="label label-default" CommandName="MOD">
                                                    <span class="icon-edit"></span>
                                                </asp:LinkButton>
                                                &nbsp;
                                                <asp:LinkButton ID="btn_delete" runat="server" CssClass="label label-danger" CommandName="DEL">
                                                    <span class="icon-line-trash"></span>
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
-->
                    </div>
                    <div id="div_visitatore" runat="server">
                        <div class="fancy-title title-dotted-border">
                            <h3>La tua selezione di video</h3>
                        </div>
                    </div>
                    <div id="div_profilo" runat="server">
                        <ul class="nav nav-tabs" style="margin-bottom: 30px;">
                            <li><a href="#">Riepilogo</a></li>
                            <li><a href="#">Gestione video</a></li>
                            <li class="active"><a href="#">Modifica profilo</a> </li>
                        </ul>
                        <div class="col_half" style="margin-bottom:0px;">
                            <div class="col_half" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_nome" runat="server" MaxLength="70" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                            </div>
                            <div class="col_half col_last" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_cognome" runat="server" MaxLength="70" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                            </div>
                            <div class="col_half" id="div_ragione_sociale" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_ragione_sociale" name="txt_ragione_sociale" runat="server" MaxLength="256" 
                                    CssClass="form-control" Form_Vertical="true" />
                            </div>
                            <div class="col_half col_last" style="margin-bottom:0px;">
                                <cc:rDropDown ID="ddl_tipo_utente" runat="server" CssClass="form-control" 
                                        Form_Vertical="true" Required="false" />
                            </div>
                            <div class="col_half" id="div_codice_fiscale" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_codice_fiscale" name="txt_codice_fiscale" runat="server" MaxLength="16" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_half col_last" id="div_partita_iva" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_partita_iva" name="txt_partita_iva" runat="server" MaxLength="12" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_full" style="margin-bottom:0px;">
                                <label for="chk_stato_estero">
                                    <%=Lingua.CaricaLingua("lgl_register_indirizzo_estero")%></label>
                                <asp:CheckBox ID="chk_stato_estero" runat="server" AutoPostBack="true" />
                            </div>
                            <div class="col_one_third" id="div_provincia" runat="server" style="margin-bottom:0px;">
                                <cc:rDropDown ID="ddl_provincia" runat="server" CssClass="form-control" AutoPostBack="true"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_two_third col_last" id="div_comune" runat="server" style="margin-bottom:0px;">
                                <cc:rDropDown ID="ddl_citta" runat="server" CssClass="form-control" AutoPostBack="false"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_half" id="div_provincia_estera" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_provincia_estera" name="txt_provincia_estera" runat="server" MaxLength="128" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_half col_last" id="div_comune_estero" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_comune_estero" runat="server" MaxLength="128" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_one_third" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_cap" runat="server" MaxLength="5" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_two_third col_last" id="div_localita" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_localita" runat="server" MaxLength="128" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_full" id="div_stato_estero" runat="server" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_stato_estero" name="txt_localita" runat="server" MaxLength="128" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_full" style="margin-bottom:0px;">
                                <cc:rTextBox ID="txt_indirizzo" name="txt_indirizzo" runat="server" MaxLength="255" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_half" style="margin-bottom:0px;">
                                <asp:LinkButton ID="btn_profilo" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                    Modifica profilo <i class="icon-check"></i>
                                </asp:LinkButton>
                            </div>
                            <div class="col_full" style="margin-bottom:0px;">
                                
                            </div>
                        </div> 
                        <div class="col_half col_last" style="margin-bottom:0px;">
                            <div class="col_full">
                                <cc:rTextBox ID="txt_old_password" TextMode="Password" runat="server" MaxLength="100" CssClass="form-control"
                                        Form_Vertical="true" Label="Vecchia password" />
                            </div>
                            <div class="col_half">
                                <cc:rTextBox ID="txt_password" TextMode="Password" runat="server" MaxLength="100" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_half col_last">
                                <cc:rTextBox ID="txt_password_repeted" TextMode="Password" runat="server" MaxLength="100" CssClass="form-control"
                                        Form_Vertical="true" />
                            </div>
                            <div class="col_half" style="margin-bottom:0px;">
                                <asp:LinkButton ID="btn_password" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                    Modifica password <i class="icon-check"></i>
                                </asp:LinkButton>
                            </div>
                            <div class="col_half" style="margin-bottom:0px; margin-top:50px;">
                                <asp:ImageButton ID="img_utente" runat="server" Style=" width:100%; min-width:200px;" />
                                <br />
                                <asp:LinkButton ID="btn_cancella_foto" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                    Cancella Immagine&nbsp;<i class="icon-check"></i>
                                </asp:LinkButton>

                            </div> 
                            <div class="col_half col_last" style="margin-bottom:0px; margin-top:50px;">
                                <telerik:RadAsyncUpload runat="server" ID="img_upload" MultipleFileSelection="Disabled" Culture="it-IT" Localization-Select="Seleziona"
                                    AllowedFileExtensions="jpg,png,jpeg,gif" />
                                <asp:LinkButton ID="btn_carica" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                    Carica&nbsp;<i class="icon-check"></i>
                                </asp:LinkButton>
                            </div> 

                        </div> 
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
