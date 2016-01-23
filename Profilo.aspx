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
    <section id="page-title" class="page-title-mini">
        <div class="container clearfix">
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h1>
            <ol class="breadcrumb hidden">
                <li><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <asp:UpdatePanel ID="upd_panel" runat="server">
        <ContentTemplate>
            <div class="content-wrap" style="padding: 20px 0">
                <div class="container clearfix">
                    <div class="col_full">
                        <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server" visible="false">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                            <i class="fa-lg fa fa-warning"></i><strong><%=Lingua.CaricaLingua("lgl_attenzione")%></strong><asp:Literal ID="ltl_messaggio_ko" runat="server"></asp:Literal>
                        </div>
                        <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server" visible="false">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                            <strong><asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal></strong>
                        </div>
                        
                        <!-- tab di navigazione -->
                        <ul class="nav nav-tabs" style="margin-bottom: 30px;">
                            <li class="active" id="li_riepilogo" runat="server">
                                <asp:LinkButton ID="btn_resume" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_riepilogo")%></asp:LinkButton>
                            </li>
                            <li id="li_video" runat="server">
                                <asp:LinkButton ID="btn_gestione_video" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_gestione_video")%></asp:LinkButton>
                            </li>
                            <li id="li_profilo" runat="server">
                                <asp:LinkButton ID="btn_modifica" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_profilo")%></asp:LinkButton>
                            </li>
                            <li id="li_pubblico" runat="server">
                                <asp:LinkButton ID="btn_profilo_pubblico" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_profilo_pubblico")%></asp:LinkButton>
                            </li>
                        </ul>
                        <!-- FINE tab di navigazione -->
                            
                        <!-- Riepilogo -->
                        <div id="div_espositore" runat="server">
                            <div class="col_one_fourth center">
                                <div class="feature-box fbox-center fbox-bg fbox-light">
                                    <div class="fbox-icon">
                                        <span><i class="icon-eye"></i></span>
                                    </div>
                                    <h3 class="counter counter-large">
                                        <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_vis"
                                            runat="server"><asp:Literal ID="ltl_count_visualizzazioni" runat="server"></asp:Literal></span>
                                    </h3>
                                    <h5>
                                        <%=Lingua.CaricaLingua("lgl_profilo_visualizzazioni")%></h5>
                                </div>
                            </div>
                            <div class="col_one_fourth center">
                                <div class="feature-box fbox-center fbox-bg fbox-light">
                                    <div class="fbox-icon">
                                        <span><i class="icon-thumbs-up2"></i></span>
                                    </div>
                                    <h3 class="counter counter-large">
                                        <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_lik"
                                            runat="server"><asp:Literal ID="ltl_count_like" runat="server"></asp:Literal></span>
                                    </h3>
                                    <h5><%=Lingua.CaricaLingua("lgl_profilo_likes")%></h5>
                                </div>
                            </div>
                            <div class="list-group col_half col_last">
                                <h4><%=Lingua.CaricaLingua("lgl_profilo_dettaglio_sui_video")%></h4>
                                <asp:Repeater ID="rpt_video_lista" runat="server">
                                    <ItemTemplate>
                                        <div class="list-group-item clearfix">
                                            <asp:LinkButton ID="lnk_titolo" runat="server" CommandName="VIDEO" CssClass="fleft" style="display: inline-block"></asp:LinkButton>
                                            <span class="fright" style="display: inline-block; white-space:nowrap;">
                                                <span class="label label-success">
                                                    <asp:Literal ID="ltl_visualizzazioni" runat="server"></asp:Literal>&nbsp;
                                                    <span class="icon-thumbs-up"></span>&nbsp;
                                                </span>
                                                &nbsp;
                                                <span class="label label-primary">
                                                    <asp:Literal ID="ltl_like" runat="server"></asp:Literal>&nbsp;
                                                    <span class="icon-eye"></span>&nbsp;
                                                </span>
                                                &nbsp;
                                                <span class="label label-default">
                                                    <asp:Literal ID="ltl_commenti" runat="server"></asp:Literal>&nbsp;
                                                    <span class="icon-comment"></span>&nbsp;
                                                </span>
                                            </span>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:LinkButton ID="btn_aggiungi" runat="server" CssClass="button button-rounded nomargin">
                                    <%=Lingua.CaricaLingua("lgl_profilo_aggiungi_video")%>&nbsp;<i class="icon-arrow-right2"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <!-- FINE Riepilogo -->
                        
                        <!-- Gestione Video -->
                        <div id="div_gestione_video" runat="server">
                            <div class="fancy-title title-dotted-border">
                                <h3><%=Lingua.CaricaLingua("lgl_profilo_tuoi_video")%></h3>
                            </div>
                            <asp:Repeater ID="rpt_video" runat="server">
                                <ItemTemplate>
                                    <div id="portfolio" class="portfolio-1 clearfix">
                                        <article class="portfolio-item pf-media pf-icons clearfix">
                                            <div class="portfolio-image">
                                                <a href="portfolio-single.html"><img src="images/custom/bg_jazz.jpg" alt="Open Imagination"></a>
                                                <div class="portfolio-overlay">
                                                    <a href="images/portfolio/full/1.jpg" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
                                                    <a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
                                                </div>
                                            </div>
                                            <div class="portfolio-desc">
                                                <h3><a href="portfolio-single.html">Open Imagination</a></h3>
                                                <span><a href="#">Media</a>, <a href="#">Icons</a></span>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.</p>
                                                <ul class="iconlist">
                                                    <li><i class="icon-ok"></i> <strong>Created Using:</strong> PHP, HTML5, CSS3</li>
                                                    <li><i class="icon-ok"></i> <strong>Completed on:</strong> 12th January, 2014</li>
                                                    <li><i class="icon-ok"></i> <strong>By:</strong> John Doe</li>
                                                </ul>
                                                <a href="portfolio-single.html" class="button button-3d noleftmargin">Launch Project</a>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="col-lg-4">
                                            <div class="feature-box center media-box fbox-bg">
                                                <div class="fbox-media">
                                                    <asp:Image ID="img_copertina" runat="server"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="feature-box center media-box fbox-bg">
                                                <div class="fbox-desc" style="border:none!Important">
                                                    <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                                    <span class="subtitle"><asp:Literal ID="ltl_descrizione" runat="server">0</asp:Literal></span>
                                                    <div class="divider divider-center"></div>
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
                                                    <div class="col_half col_last nobottommargin text-right" style="font-size: 20px; white-space:nowrap;">
                                                        <span class="label label-success">
                                                            <asp:Literal ID="ltl_visualizzazioni" runat="server">0</asp:Literal>&nbsp;<span class="icon-thumbs-up"></span></span>
                                                        <span class="label label-primary">
                                                            <asp:Literal ID="ltl_like" runat="server">0</asp:Literal>&nbsp;<span class="icon-eye"></span></span>
                                                        <span class="label label-default">
                                                            <asp:Literal ID="ltl_commenti" runat="server">0</asp:Literal>&nbsp;<span class="icon-comment"></span></span>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <h3><%=Lingua.CaricaLingua("lgl_profilo_elenco_likes")%></h3> 
                                            <asp:Repeater ID="rpt_like_lista" runat="server" OnItemDataBound="rpt_like_lista_ItemDataBound">
                                                <HeaderTemplate>
                                                    <div style="max-height:200px; overflow:auto;">
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <div class="list-group-item clearfix">
                                                        <asp:Label ID="ltl_utente" runat="server" CssClass="fleft" style="display: inline-block"></asp:Label>
                                                        <asp:Label ID="ltl_data" runat="server" CssClass="fright" style="display: inline-block"></asp:Label>
                                                    </div>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </div>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </div> 
                                    </div>
                                    <div class="divider divider-center">
                                        <i class="icon-circle"></i>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        
                        <!-- Visitatore -->
                        <div id="div_visitatore" runat="server">
                            <div class="fancy-title title-dotted-border">
                                <h3>
                                    <%=Lingua.CaricaLingua("lgl_profilo_selezione_video")%></h3>
                            </div>
                        </div>
                        <!-- FINE Visitatore -->
                            
                        <!-- Modifica profilo -->
                        <div id="div_profilo" runat="server">
                            <div class="col_half" style="margin-bottom: 0px;">
                                <div class="col_half" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_nome" runat="server" MaxLength="70" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col_half col_last" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_cognome" runat="server" MaxLength="70" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col_half" id="div_ragione_sociale" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_ragione_sociale" name="txt_ragione_sociale" runat="server" MaxLength="256"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half col_last" style="margin-bottom: 0px;">
                                    <cc:rDropDown ID="ddl_tipo_utente" runat="server" CssClass="form-control" Form_Vertical="true"
                                        Required="false" />
                                </div>
                                <div class="col_half" id="div_codice_fiscale" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_codice_fiscale" name="txt_codice_fiscale" runat="server" MaxLength="16"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half col_last" id="div_partita_iva" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_partita_iva" name="txt_partita_iva" runat="server" MaxLength="12"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <label for="chk_stato_estero">
                                        <%=Lingua.CaricaLingua("lgl_register_indirizzo_estero")%></label>
                                    <asp:CheckBox ID="chk_stato_estero" runat="server" AutoPostBack="true" />
                                </div>
                                <div class="col_one_third" id="div_provincia" runat="server" style="margin-bottom: 0px;">
                                    <cc:rDropDown ID="ddl_provincia" runat="server" CssClass="form-control" AutoPostBack="true"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_two_third col_last" id="div_comune" runat="server" style="margin-bottom: 0px;">
                                    <cc:rDropDown ID="ddl_citta" runat="server" CssClass="form-control" AutoPostBack="false"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_half" id="div_provincia_estera" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_provincia_estera" name="txt_provincia_estera" runat="server"
                                        MaxLength="128" CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half col_last" id="div_comune_estero" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_comune_estero" runat="server" MaxLength="128" CssClass="form-control"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_one_third" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_cap" runat="server" MaxLength="5" CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_two_third col_last" id="div_localita" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_localita" runat="server" MaxLength="128" CssClass="form-control"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_full" id="div_stato_estero" runat="server" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_stato_estero" name="txt_localita" runat="server" MaxLength="128"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_indirizzo" name="txt_indirizzo" runat="server" MaxLength="255"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half" style="margin-bottom: 0px;">
                                    <asp:LinkButton ID="btn_profilo" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_modifica_profilo")%> <i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                </div>
                            </div>
                            <div class="col_half col_last" style="margin-bottom: 0px;">
                                <div class="col_full">
                                    <cc:rTextBox ID="txt_old_password" TextMode="Password" runat="server" MaxLength="100"
                                        CssClass="form-control" Form_Vertical="true" Label="Vecchia password" />
                                </div>
                                <div class="col_half">
                                    <cc:rTextBox ID="txt_password" TextMode="Password" runat="server" MaxLength="100"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half col_last">
                                    <cc:rTextBox ID="txt_password_repeted" TextMode="Password" runat="server" MaxLength="100"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half" style="margin-bottom: 0px;">
                                    <asp:LinkButton ID="btn_password" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_modifica_psw")%> <i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                                <div class="col_half" style="margin-bottom: 0px; margin-top: 50px;">
                                    <asp:ImageButton ID="img_utente" runat="server" Style="width: 100%; min-width: 200px;" />
                                    <br />
                                    <asp:LinkButton ID="btn_cancella_foto" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>&nbsp;<i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                                <div class="col_half col_last" style="margin-bottom: 0px; margin-top: 50px;">
                                    <telerik:RadAsyncUpload runat="server" ID="img_upload" MultipleFileSelection="Disabled"
                                        Culture="it-IT" Localization-Select="Seleziona" AllowedFileExtensions="jpg,png,jpeg,gif" />
                                    <asp:LinkButton ID="btn_carica" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_carica")%>&nbsp;<i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <!-- FINE modifica profilo -->
                                    
                        <!-- Profilo Pubblico -->
                        <div id="div_profilo_pubblico" runat="server">
                            <div class="col_half" style="margin-bottom: 0px;">
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_descrizione_pubblica" runat="server" MaxLength="70" CssClass="form-control"
                                        Form_Vertical="true" Required="false" TextMode="MultiLine" Rows="15" />
                                </div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <label for="chk_stato_estero">
                                        <%=Lingua.CaricaLingua("lgl_register_profilo_pubblicato")%></label>
                                    <asp:CheckBox ID="chk_ut_profilo_pubblicato" runat="server" AutoPostBack="true" />
                                </div> 
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <asp:LinkButton ID="btn_salva_profilo_pubblico" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_modifica_profilo")%> <i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                </div>
                            </div>
                            <div class="col_half col_last" style="margin-bottom: 0px;">
                                <div class="col_half" style="margin-bottom: 0px; margin-top: 50px;">
                                    <%=Lingua.CaricaLingua("lgl_profilo_immagine_pubblica")%>
                                    <asp:ImageButton ID="img_profilo_pubblico" runat="server" Style="width: 100%; min-width: 200px;" />
                                    <br />
                                    <asp:LinkButton ID="btn_cancella_profilo_pubblico" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>&nbsp;<i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                                <div class="col_half col_last" style="margin-bottom: 0px; margin-top: 50px;">
                                    <telerik:RadAsyncUpload runat="server" ID="upl_img_profilo_pubblico" MultipleFileSelection="Disabled"
                                        Culture="it-IT" Localization-Select="Seleziona" AllowedFileExtensions="jpg,png,jpeg,gif" />
                                </div>
                                <div class="col_half" style="margin-bottom: 0px; margin-top: 50px;">
                                    <%=Lingua.CaricaLingua("lgl_profilo_immagine_pubblica_tn")%>
                                    <asp:ImageButton ID="img_profilo_pubblico_tn" runat="server" Style="width: 100%; min-width: 200px;" />
                                    <br />
                                    <asp:LinkButton ID="btn_cancella_profilo_pubblico_tn" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>&nbsp;<i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                                <div class="col_half col_last" style="margin-bottom: 0px; margin-top: 50px;">
                                    <telerik:RadAsyncUpload runat="server" ID="upl_img_profilo_pubblico_tn" MultipleFileSelection="Disabled"
                                        Culture="it-IT" Localization-Select="Seleziona" AllowedFileExtensions="jpg,png,jpeg,gif" />
                                    <asp:LinkButton ID="btn_carica_profilo_pubblico" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_carica")%>&nbsp;<i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <!-- FINE modifica profilo pubblico -->            
                        
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
