<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Profilo.aspx.vb" Inherits="JazzHub_Web.Profilo" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/js/maxlength/jquery.maxlength.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-switch.css" type="text/css" />
    <script type="text/javascript" src="/js/maxlength/jquery.plugin.min.js"></script>
    <script type="text/javascript" src="/js/maxlength/jquery.maxlength.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-switch.min.js"></script>
    <link rel="stylesheet" href="/css/html5imageupload.css?v1.3" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-mini">
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
                            <div class="alert alert-success clearfix" id="div_paga" runat="server" data-class-lg="tleft" data-class-md="tleft" data-class-sm="tleft" data-class-xs="center" data-class-xxs="center">
                            <button type="button" class="close hidden" data-dismiss="alert" aria-hidden="true">x</button>
                            <strong><%=Lingua.CaricaLingua("lgl_profilo_paga_scegli")%></strong>
                                <hr class="hidden" data-class-lg="hidden" data-class-md="hidden" data-class-sm="hidden" data-class-xs="not-hidden" data-class-xxs="not-hidden">
                                <asp:LinkButton ID="btn_paga" runat="server" CssClass="button button-success button-rounded button-mini nomargin fright" data-class-lg="fright" data-class-md="fright" data-class-sm="fright" data-class-xs="divcenter" data-class-xxs="divcenter">
                                <%=Lingua.CaricaLingua("lgl_profilo_paga_adesso")%>&nbsp;<i class="icon-arrow-right2"></i>
                            </asp:LinkButton>
                        </div>
                        
                        
                        <!-- tab di navigazione -->
                        <ul class="nav nav-tabs" style="margin-bottom: 30px;">
                            <li class="active" id="li_riepilogo" runat="server">
                                <asp:LinkButton ID="btn_resume" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_riepilogo")%></asp:LinkButton>
                            </li>
                            <li id="li_profilo" runat="server">
                                <asp:LinkButton ID="btn_modifica" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_profilo")%></asp:LinkButton>
                            </li>
                            <li id="li_video" runat="server">
                                <asp:LinkButton ID="btn_gestione_video" runat="server"></asp:LinkButton>
                            </li>
                            <li id="li_pubblico" runat="server">
                                <asp:LinkButton ID="btn_profilo_pubblico" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_profilo_pubblico")%></asp:LinkButton>
                            </li>
                        </ul>
                        <!-- FINE tab di navigazione -->
                            
                        <!-- Riepilogo -->
                        <div id="div_espositore" runat="server">
                            <div class="col_half">
                                <div class="col-md-6 center" data-class-lg="col_div_vert" data-class-md="col_div_vert" data-class-sm="col_div_horiz" data-class-xs="col_div_horiz" data-class-xxs="col_div_horiz">
                                    <i class="i-plain i-xlarge divcenter nobottommargin icon-eye"></i>
                                    <h3 class="counter counter-large">
                                        <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_vis"
                                            runat="server"><asp:Literal ID="ltl_count_visualizzazioni" runat="server"></asp:Literal></span>
                                    </h3>
                                    <h5><%=Lingua.CaricaLingua("lgl_profilo_visualizzazioni")%></h5>
                                </div>
                                <div class="col-md-6 center"  data-class-lg="col_div_vert" data-class-md="col_div_vert" data-class-sm="col_div_horiz" data-class-xs="col_div_horiz" data-class-xxs="col_div_horiz">
                                    <i class="i-plain i-xlarge divcenter nobottommargin icon-thumbs-up2"></i>
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
                                <asp:LinkButton ID="btn_aggiungi" runat="server" CssClass="button button-desc btn-block button-border button-rounded center nomargin">
                                    <%=Lingua.CaricaLingua("lgl_profilo_aggiungi_video")%>
                                    <span id="span_no_video" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_aggiungi_video_non_pres")%></span>
                                    <span><i class="icon-video"></i></span>
                                </asp:LinkButton>
                                        <hr>
                                <a href="#" data-toggle="modal" data-target=".invite" class="button btn-block button-primary button-rounded center nomargin">
                                    <%=Lingua.CaricaLingua("lgl_profilo_invita_amico")%>
                                    <span><i class="icon-line-share"></i></span>
                                </a>
                                    
                                <div class="modal fade bs-example-modal-lg invite" tabindex="-1" role="dialog" aria-labelledby="test" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-body">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel"><%=Lingua.CaricaLingua("lgl_profilo_invita_amici")%></h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="col_full">
                                                        <h3>Usa questo modulo per invitare i tuoi amici</h3>
                                                        <i>(Puoi inserirne fino a 4 alla volta)</i>
                                                    </div>
                                                    <hr>
                                                    <div class="col_half nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_nome_01" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
                                                    <div class="col_half col_last nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_mail_01" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
                                                    <div class="col_half nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_nome_02" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
                                                    <div class="col_half col_last nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_mail_02" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
													
                                                    <div class="col_half nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_nome_03" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
                                                    <div class="col_half col_last nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_mail_03" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
													
                                                    <div class="col_half nobottommargin">
                                                        <cc:rTextBox ID="txt_invita_nome_04" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
                                                    <div class="col_half col_last">
                                                        <cc:rTextBox ID="txt_invita_mail_04" runat="server" MaxLength="70" CssClass="form-control"
                                                            Form_Vertical="true" Required="false" />
                                                    </div>
                                                    <div class="col_full nobottommargin">
                                                        <asp:LinkButton ID="btn_invita_amoci" runat="server" CssClass="button btn-block button-rounded center nomargin" OnClientClick="$('.invite').modal('hide');">
                                                            <%=Lingua.CaricaLingua("lgl_profilo_invita_amici")%>
                                                        </asp:LinkButton>
                                                    </div> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- FINE Riepilogo -->
                        
                        <!-- Gestione Video -->
                        <div id="div_gestione_video" runat="server">
                            <div class="fancy-title title-dotted-border hidden">
                                <h3><%=Lingua.CaricaLingua("lgl_profilo_tuoi_video")%></h3>
                            </div>
                            <asp:Repeater ID="rpt_video" runat="server">
                                <ItemTemplate>
                                    <div class="col_full learfix">
                                        <div class="col_two_fifth nobottommargin">
                                            <div style="position: absolute; top: 10px; left: 15px">
                                                <asp:LinkButton ID="btn_video" CommandName="VIDEO" CssClass="noleftmargin button button-mini button-rounded" runat="server">
                                                    <%=Lingua.CaricaLingua("lgl_profilo_visualizza")%>
                                                </asp:LinkButton>
                                            </div>
                                            <asp:Image ID="img_copertina" runat="server"/>
                                        </div>
                                        <div class="col_three_fifth col_last nobottommargin">
                                            <h3 class="nomargin nopadding"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                                            <p><asp:Literal ID="ltl_descrizione" runat="server">0</asp:Literal></p>
                                            <div class="col_half nobottommargin">
                                                <ul class="iconlist">
                                                    <li><i class="icon-thumbs-up"></i> <asp:Literal ID="ltl_visualizzazioni" runat="server">0</asp:Literal> <%=Lingua.CaricaLingua("lgl_profilo_likes")%></li>
                                                    <li><i class="icon-eye"></i>  <asp:Literal ID="ltl_like" runat="server">0</asp:Literal> <%=Lingua.CaricaLingua("lgl_profilo_visualizzazioni")%></li>
                                                    <li><i class="icon-comment"></i> <asp:Literal ID="ltl_commenti" runat="server">0</asp:Literal> <%=Lingua.CaricaLingua("lgl_profilo_commenti")%></li>
                                                </ul>
                                                
                                                <div class="clear"></div>
                                                <asp:LinkButton ID="btn_modifica" runat="server" CssClass="noleftmargin button button-mini button-rounded button-green" CommandName="MOD">
                                                    <span class="icon-edit"></span> <%=Lingua.CaricaLingua("lgl_profilo_modifica")%>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="btn_delete" runat="server" CssClass="noleftmargin button button-mini button-rounded button-danger" CommandName="DEL">
                                                    <span class="icon-line-trash"></span> <%=Lingua.CaricaLingua("lgl_profilo_elimina")%>
                                                </asp:LinkButton>
                                            </div>
                                            <div class="col_half col_last nobottommargin">
                                                <h4 class="nobottommargin"><%=Lingua.CaricaLingua("lgl_profilo_elenco_likes")%></h4>
                                                
                                                <asp:Repeater ID="rpt_like_lista" runat="server" OnItemDataBound="rpt_like_lista_ItemDataBound" OnItemCommand="rpt_like_lista_ItemCommand">
                                                    <HeaderTemplate>
                                                        <div class="panel panel-default divcenter nomargin" style="padding: 10px; height: 150px; overflow: auto">
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <div class="list-group-item clearfix">
                                                            <asp:LinkButton ID="lnk_utente" runat="server" CommandName="UTE" CssClass="fleft" style="display: inline-block"></asp:LinkButton>
                                                            <asp:Label ID="ltl_data" runat="server" CssClass="fright" style="display: inline-block"></asp:Label>
                                                        </div>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </div>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
<!--                                            </div> -->
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
                            <div class="container clearfix ">
                                <div id="portfolio" class="portfolio portfolio-4 portfolio-masonry clearfix">
                                    <asp:Repeater ID="rpt_video_guest" runat="server">
                                        <ItemTemplate>
                                            <article class="portfolio-item box-shadow-custom">
                                                <div class="portfolio-image patch-placeholder">
                                                    <asp:LinkButton ID="btn_video" CommandName="VIDEO" runat="server">
                                                        <asp:Image ID="img_copertina" runat="server" />
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
                                    <asp:LinkButton ID="btn_profilo" runat="server" CssClass="button button-rounded button-danger nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_modifica_profilo")%> <i class="icon-ok-sign"></i>
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
                                    <asp:LinkButton ID="btn_password" runat="server" CssClass="button button-rounded button-danger nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_modifica_psw")%> <i class="icon-ok-sign"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <!-- FINE modifica profilo -->
                                    
                        <!-- Profilo Pubblico -->
                        <div id="div_profilo_pubblico" runat="server">
                            <div class="col_half" id="ready" style="margin-bottom: 0px;">
                                <div class="col_full">
                                    <label><%=Lingua.CaricaLingua("lgl_profilo_immagine_pubblica_tn")%></label>
                                </div>
                                <div class="col_half">
                                    <asp:ImageButton ID="img_avatar" CssClass="thumbnail" runat="server" style="max-width: 220px; max-height: 220px;" />
                                </div>
                                <div class="col_half col_last">
                                    <telerik:RadAsyncUpload runat="server" ID="upl_img_avatar" MultipleFileSelection="Disabled"
                                        Culture="it-IT" Localization-Select="Seleziona" AllowedFileExtensions="jpg,png,jpeg,gif" />
                                    <asp:LinkButton ID="btn_cancella_foto" runat="server" CssClass="button button-rounded button-danger button-mini nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>&nbsp;<i class="icon-ok-sign"></i>
                                    </asp:LinkButton><br>
                                        <small><i>Dimensione consigliata: 220*220 pixel</i></small>
                                </div>
                                <div class="col_full">
                                    <label><%=Lingua.CaricaLingua("lgl_profilo_immagine_pubblica")%></label>
                                </div>
                                <div class="col_half" id="div_pp_image" runat="server">
                                    <asp:ImageButton ID="img_profilo_pubblico" runat="server" CssClass="thumbnail" Style="width: 100%; max-height: 200px;" />
                                </div>
                                <div class="col_half col_last" id="div_pp_cancella" runat="server">
                                    <telerik:RadAsyncUpload runat="server" ID="upl_img_profilo_pubblico" MultipleFileSelection="Disabled"
                                        Culture="it-IT" Localization-Select="Seleziona" AllowedFileExtensions="jpg,png,jpeg,gif" Visible="true" />
                                    <asp:LinkButton ID="btn_cancella_profilo_pubblico" runat="server" CssClass="button button-rounded button-danger button-mini nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>&nbsp;<i class="icon-ok-sign"></i>
                                    </asp:LinkButton><br>
                                </div>
                                <div class="col_full clearfix hidden" id="div_pp_drop" runat="server">
                                    <div class="dropzone" class="thumbnail" data-width="960" data-height="540" data-ghost="false" data-resize="true" data-originalsize="false" style="width: 100%;">
                                        <asp:FileUpload ID="upl_img_profilo_pubblico_drop" runat="server" />
                                    </div>
                                    <small><i>Dimensione consigliata: 1170*500 pixel</i></small>
                                </div>
                                <div class="col_full">
                                    <asp:LinkButton ID="btn_carica_profilo_pubblico" runat="server" CssClass="button button-rounded button-danger nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_carica_immagine")%>&nbsp;<i class="icon-ok-sign"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col_half col_last">
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <cc:rTextBox ID="txt_descrizione_pubblica" runat="server" MaxLength="70" CssClass="form-control"
                                        Form_Vertical="true" Required="false" TextMode="MultiLine" Rows="15" />
                                </div>
                                <div class="col_full">
                                    <%--<label for="">
                                    <%=Lingua.CaricaLingua("lgl_register_social")%></label>--%>
                                    <asp:Repeater ID="rpt_social" runat="server">
                                        <ItemTemplate>
                                            <div class="col_full">
                                                <label><asp:Literal ID="ltl_social" runat="server"></asp:Literal></label>
                                                <asp:TextBox ID="txt_social" runat="server" MaxLength="70" CssClass="form-control"
                                                    Form_Vertical="true" Required="false" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div id="profile_switcher" class="alert alert-success" runat="server">
                                        <asp:HyperLink ID="lnk_preview" runat="server" Target="_blank" NavigateUrl="/User-Post.aspx" CssClass="button button-primary button-mini button-rounded nomargin lowercase fright">
                                            <%=Lingua.CaricaLingua("lgl_profilo_anteprima_profilo")%></i>
                                        </asp:HyperLink>
                                        <h4 class="nomargin"><%=Lingua.CaricaLingua("lgl_profilo_gestisci_pubblicazione")%></h4>
                                        <p style="margin-bottom: 20px;"><%=Lingua.CaricaLingua("lgl_profilo_attiva_pubblicazione")%></p>
                                        <strong><%=Lingua.CaricaLingua("lgl_register_profilo_pubblicato")%></strong>
                                        <asp:CheckBox ID="chk_ut_profilo_pubblicato" CssClass="fright" style="position: relative; top: -6px" runat="server" />
                                    </div>
                                    <div class="clear"></div>
                                    <asp:LinkButton ID="btn_salva_profilo_pubblico" runat="server" CssClass="button button-rounded button-danger nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_modifica_profilo")%> <i class="icon-ok-sign"></i>
                                    </asp:LinkButton>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- FINE modifica profilo pubblico -->            
                        
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers >
            <asp:PostBackTrigger ControlID ="btn_carica_profilo_pubblico" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script src="/js/html5imageupload.js?v1.4.3"></script>
    <script>
        function demoUpload() {
            console.log('demoUpload avviato!');
            $('.dropzone').html5imageupload();
        };
        
        function checkContainer () {
            if($('#ready').is(':visible')){ 
                console.log('visibile!');
                demoUpload();
            } else {
                setTimeout(checkContainer, 50);
            }
        }

        function reinit_js() {

            checkContainer();

            $('#<%=txt_descrizione_pubblica.txt_Client_Id%>').maxlength({ max: 500, feedbackText: '<%=Lingua.CaricaLingua("lgl_usati")%> {c} <%=Lingua.CaricaLingua("lgl_di")%> {m}' });

            $("[ID='<%=chk_ut_profilo_pubblicato.ClientId%>']").bootstrapSwitch({
                onColor: 'success',
                offColor: 'danger',
                labelWidth: 5,
                onSwitchChange: function () {
                    $("#<%=profile_switcher.ClientId%>").toggleClass('alert-danger').toggleClass('alert-success')
                    //alert($("#<%=chk_ut_profilo_pubblicato.ClientId%>").is(':checked'));
                    PageMethods.SetProfiloPubblicato($("#<%=chk_ut_profilo_pubblicato.ClientId%>").is(':checked'), PMSuccess, PMFailure);
                }
            });

        }

        $(document).ready(function () {
            reinit_js();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
        });

        function endRequestHandler(sender, args) {
            reinit_js();
        }
   
    </script>
        
</asp:Content>
