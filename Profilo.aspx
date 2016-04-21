<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Profilo.aspx.vb"  
     EnableEventValidation="false" Inherits="JazzHub_Web.Profilo" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/js/maxlength/jquery.maxlength.css" type="text/css">
    <link rel="stylesheet" href="/css/bootstrap-switch.css" type="text/css">
    <script type="text/javascript" src="/js/maxlength/jquery.plugin.min.js"></script>
    <script type="text/javascript" src="/js/maxlength/jquery.maxlength.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="/js/jquery.cropit.js"></script>
    <script type="text/javascript" src="/js/jquery.actual.min.js"></script>
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
                        <div class="alert alert-danger alert-dismissable" id="div_messaggio_profilo" runat="server" visible="false">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                            <i class="fa-lg fa fa-warning"></i><asp:Literal ID="ltl_messaggio_profilo" runat="server"></asp:Literal>
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
                            <li id="li_when" runat="server">
                                <asp:LinkButton ID="btn_profilo_when" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_profilo_when")%></asp:LinkButton>
                            </li>
                            <li id="li_disp" runat="server">
                                <asp:LinkButton ID="btn_profilo_disp" runat="server"><%=Lingua.CaricaLingua("lgl_profilo_profilo_disp")%></asp:LinkButton>
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
                                                        <h3><%=Lingua.CaricaLingua("lgl_profilo_invita_amici_usa")%></h3>
                                                        <i><%=Lingua.CaricaLingua("lgl_profilo_invita_amici_usa_help")%></i>
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
                            <h4><%=Lingua.CaricaLingua("lgl_profilo_tuoi_video")%></h4>
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
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        
                        <!-- Visitatore -->
                        <div id="div_visitatore" runat="server">
                            <h4><%=Lingua.CaricaLingua("lgl_profilo_selezione_video")%></h4>
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
                                        CssClass="form-control" Form_Vertical="true" Label="" />
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
                                <div class="col_full divcenter center">
                                    <label><%=Lingua.CaricaLingua("lgl_profilo_immagine_pubblica_tn")%></label>
                                    <div class="divcenter" style="position: relative; width: 248px; height: 248px;">
                                        <asp:ImageButton ID="img_avatar" runat="server" CssClass="thumbnail" style="max-width: 248px; max-height: 248px; display: inline-block;margin: 0 !important;" />
                                        
                                        <a href="#" onClick="openCrop(); return false;" class="image-action inverse" data-toggle="modal" data-target="" id="btn_carica_avatar" runat="server">
                                            <!--<%=Lingua.CaricaLingua("lgl_profilo_carica_immagine")%>-->
                                                <span><i class="icon-camera"></i></span>
                                        </a>
                                        <asp:LinkButton ID="btn_cancella_foto" class="image-action" runat="server" >
                                            <!--<%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>-->
                                                <i class="icon-remove"></i>
                                        </asp:LinkButton>
                                    </div>
<!--                                    <small><i><%=Lingua.CaricaLingua("lgl_profilo_dimensione_consigliata")%>: 250*250 pixel</i></small>-->
                                </div>
                                <div class="col_full divcenter center">
                                    <label><%=Lingua.CaricaLingua("lgl_profilo_immagine_pubblica")%></label>
                                    <div style="position: relative" id="div_pp_cancella" runat="server">
                                        <asp:ImageButton ID="img_profilo_pubblico" runat="server" CssClass="thumbnail" Style="display: inline-block; margin: 0; width: 100%;" />
                                        
                                        <a href="#" onClick="openCropPub(); return false;" class="image-action inverse" data-toggle="modal" data-target="" 
                                            id="btn_carica_pubblica" runat="server">
<!--                                            <%=Lingua.CaricaLingua("lgl_profilo_carica_immagine")%>-->
                                            <span><i class="icon-camera"></i></span>
                                        </a>
                                        <asp:LinkButton ID="btn_cancella_profilo_pubblico" class="image-action" runat="server">
<!--                                            <%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>-->
                                            <i class="icon-remove"></i>
                                        </asp:LinkButton>
                                    </div>
<!--                                    <small><i><%=Lingua.CaricaLingua("lgl_profilo_dimensione_consigliata")%>: 1170*500 pixel</i></small>-->
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
                                                    Form_Vertical="true" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div id="profile_switcher" class="alert alert-success" runat="server">
                                        <asp:HyperLink ID="lnk_preview" runat="server" Target="_blank" NavigateUrl="/User-Post.aspx" CssClass="button button-primary button-mini button-rounded nomargin lowercase fright">
                                            <%=Lingua.CaricaLingua("lgl_profilo_anteprima_profilo")%></i>
                                        </asp:HyperLink>
                                        <h4 class="nomargin"><%=Lingua.CaricaLingua("lgl_profilo_gestisci_pubblicazione")%></h4>
                                        <p style="margin-bottom: 20px;"><%=Lingua.CaricaLingua("lgl_profilo_attiva_pubblicazione")%></p>
                                        <strong>
                                            <span id="span_profilo_pubblicato">
                                                <asp:Literal ID="ltl_profilo_pubblicato" runat="server"></asp:Literal>
                                            </span>
                                        </strong>
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
                        <div class="col_full">
                            <hr>            
                        </div>
                        <!-- Calendario Eventi -->
                        <div id="div_profilo_when" runat="server">
                            <div class="col_full">
                                <h4><%=Lingua.CaricaLingua("lgl_profilo_appuntamento")%></h4>
                            </div>
                            <div class="panel panel-default clearfix" style="padding-top: 10px;">
                                <div class="col-md-2">
                                    <cc:rTextBox ID="txt_uw_quando" runat="server" MaxLength="18" CssClass="form-control"
                                        Form_Vertical="true" Required="false" Label="" Placeholder="dd/mm/yyyy hh:mm" />
                                </div>
                                <div class="col-md-3">
                                    <cc:rTextBox ID="txt_uw_titolo" runat="server" MaxLength="256" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col-md-3">
                                    <cc:rTextBox ID="txt_uw_citta" runat="server" MaxLength="512" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col-md-3">
                                    <cc:rTextBox ID="txt_uw_location" runat="server" MaxLength="512" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col-md-1">
                                    <div style="padding-top:24px;">
                                        <asp:LinkButton ID="btn_salva_profilo_when" runat="server" CssClass="fright button button-rounded button-small button-success">
                                            <i class="icon-plus nomargin"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div> 
                            </div>
                            <asp:Repeater ID="rpt_when" runat="server">
                                <ItemTemplate>
                                    <div class="col_full">
                                        <div class="col-md-2">
                                            <cc:rTextBox ID="txt_uw_quando" runat="server" MaxLength="18" CssClass="form-control"
                                                Form_Vertical="true" Required="false" Label="" />
                                        </div>
                                        <div class="col-md-3">
                                            <cc:rTextBox ID="txt_uw_titolo" runat="server" MaxLength="256" CssClass="form-control"
                                                Form_Vertical="true" Required="false" />
                                        </div>
                                        <div class="col-md-3">
                                            <cc:rTextBox ID="txt_uw_citta" runat="server" MaxLength="512" CssClass="form-control"
                                                Form_Vertical="true" Required="false" />
                                        </div>
                                        <div class="col-md-3">
                                            <cc:rTextBox ID="txt_uw_location" runat="server" MaxLength="512" CssClass="form-control"
                                                Form_Vertical="true" Required="false" />
                                        </div>
                                        <div class="col-md-1">
                                            <div style="padding-top:15px;">
                                                <asp:LinkButton ID="btn_delete_profilo_when" runat="server" CommandName="DEL" CssClass="fright button button-rounded button-small button-danger">
                                                    <i class="icon-remove nomargin"></i>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="btn_salva_profilo_when" runat="server" CommandName="MOD" CssClass="fright button button-rounded button-small button-success">
                                                    <i class="icon-save nomargin"></i>
                                                </asp:LinkButton>
                                            </div>
                                        </div> 
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div> 
                        <!-- FINE Calendario Eventi -->            
                        <!-- Calendario Disponibilita -->
                        <div id="div_profilo_disp" runat="server">
                            <div class="col_full">
                                <h4><%=Lingua.CaricaLingua("lgl_profilo_disponibilita")%></h4>
                            </div>
                            <div class="panel panel-default clearfix" style="padding-top: 10px;">
                                <div class="col-md-2">
                                    <cc:rTextBox ID="txt_ua_dal" runat="server" MaxLength="18" CssClass="form-control"
                                        Form_Vertical="true" Required="false" Label="" Placeholder="dd/mm/yyyy" />
                                </div>
                                <div class="col-md-2">
                                    <cc:rTextBox ID="txt_ua_al" runat="server" MaxLength="256" CssClass="form-control"
                                        Form_Vertical="true" Required="false" Label="" Placeholder="dd/mm/yyyy" />
                                </div>
                                <div class="col-md-3">
                                    <cc:rTextBox ID="txt_ua_titolo" runat="server" MaxLength="256" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col-md-4">
                                    <cc:rTextBox ID="txt_ua_annuncio" runat="server" MaxLength="512" CssClass="form-control"
                                        Form_Vertical="true" Required="false" />
                                </div>
                                <div class="col-md-1">
                                    <div style="padding-top:24px;">
                                        <asp:LinkButton ID="btn_salva_profilo_disp" runat="server" CssClass="fright button button-rounded button-small button-success">
                                            <i class="icon-plus nomargin"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div> 
                            </div>
                            <asp:Repeater ID="rpt_disp" runat="server">
                                <ItemTemplate>
                                    <div class="col_full">
                                        <div class="col-md-2">
                                            <cc:rTextBox ID="txt_ua_dal" runat="server" MaxLength="18" CssClass="form-control"
                                                Form_Vertical="true" Required="false" Label="" Placeholder="dd/mm/yyyy" />
                                        </div>
                                        <div class="col-md-2">
                                            <cc:rTextBox ID="txt_ua_al" runat="server" MaxLength="256" CssClass="form-control"
                                                Form_Vertical="true" Required="false" />
                                        </div>
                                        <div class="col-md-3">
                                            <cc:rTextBox ID="txt_ua_titolo" runat="server" MaxLength="256" CssClass="form-control"
                                                Form_Vertical="true" Required="false" />
                                        </div>
                                        <div class="col-md-4">
                                            <cc:rTextBox ID="txt_ua_annuncio" runat="server" MaxLength="512" CssClass="form-control"
                                                Form_Vertical="true" Required="false" />
                                        </div>
                                        <div class="col-md-1">
                                            <div style="padding-top:15px;">
                                                <asp:LinkButton ID="btn_delete_profilo_disp" runat="server" CommandName="DEL" CssClass="fright button button-rounded button-small button-danger">
                                                    <i class="icon-remove nomargin"></i>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="btn_salva_profilo_disp" runat="server" CommandName="MOD" CssClass="fright button button-rounded button-small button-success">
                                                    <i class="icon-save nomargin"></i>
                                                </asp:LinkButton>
                                            </div>
                                        </div> 
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div> 
                        <!-- FINE Calendario Disponibilità -->            
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:LinkButton ID="btn_salva_immagini_hidden" runat="server" style="display:none;" />
    <div class="modal fade bs-example-modal-lg crop_avatar" tabindex="-1" role="dialog" aria-labelledby="test" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 350px;">
            <div class="modal-body">
                <div class="modal-content" style="max-width: 300px;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="H1">Caricamento Immagine avatar</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col_full center">
                            <div id="image-avatar">
                                <input type="file" class="cropit-image-input" id="cropit-image-input">
                                <div class="cropit-preview" style="width: 250px; height: 250px; margin: 10px auto">
                                </div>
                                <div class="image-size-label hidden">
                                    Ridimensiona immagine
                                </div>
                                <div class="slider-wrapper">
                                    <span class="icon icon-image small-image"></span>
                                    <input type="range" value="0" class="cropit-image-zoom-input">
                                    <span class="icon icon-image large-image"></span>
                                </div>
                                <div class="rotate-wrapper">
                                    <i class="icon-fontello-rotate-ccw" id="rotate-ccw-avatar"></i>
                                    <i class="icon-fontello-rotate-cw" id="rotate-cw-avatar"></i>
                                </div>
                            </div>
                        </div> 
                        <div class="col_full nobottommargin">
                            <asp:LinkButton ID="btn_salva_avatar" runat="server" CssClass="button btn-block button-success button-rounded center nomargin" OnClientClick="exportCrop(); $('.crop_avatar').modal('hide'); return false;">
                                Salva immagine
                            </asp:LinkButton>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bs-example-modal-lg crop_public" tabindex="-1" role="dialog" aria-labelledby="test" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-body">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="H2">Caricamento Immagine pubblica</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col_full center">
                            <div id="image-public" style="width:100%; height:100%">
                                <input type="file" class="cropit-image-input" id="cropit-image-input-public">
                                <div class="cropit-preview" style="width:100%; height:400px;" id="cropit-public">
                                </div>
                                <div class="image-size-label hidden">
                                    Ridimensiona immagine
                                </div>
                                
                                <div class="slider-wrapper">
                                    <span class="icon icon-image small-image"></span>
                                    <input type="range" value="0" class="cropit-image-zoom-input">
                                    <span class="icon icon-image large-image"></span>
                                </div>
                                
                                
                                <div class="rotate-wrapper">
                                    <i class="icon-fontello-rotate-ccw" id="rotate-ccw-public"></i>
                                    <i class="icon-fontello-rotate-cw" id="rotate-cw-public"></i>
                                </div>
                            </div>
                        </div> 
                        <div class="col_full nobottommargin">
                            <asp:LinkButton ID="btn_salva_pubblica" runat="server" CssClass="button btn-block button-success button-rounded center nomargin" OnClientClick="exportCropPublic(); $('.crop_public').modal('hide'); return false;">
                                Salva immagine
                            </asp:LinkButton>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script>
        function reinit_js() {

            $('#<%=txt_descrizione_pubblica.txt_Client_Id%>').maxlength({ max: <%=max_desc%>, feedbackText: '<%=Lingua.CaricaLingua("lgl_usati")%> {c} <%=Lingua.CaricaLingua("lgl_di")%> {m}' });

            $("[ID='<%=chk_ut_profilo_pubblicato.ClientId%>']").bootstrapSwitch({
                onColor: 'success',
                offColor: 'danger',
                labelWidth: 5,
                onSwitchChange: function () {
                    $("#<%=profile_switcher.ClientId%>").toggleClass('alert-danger').toggleClass('alert-success')
                    if ($("#<%=chk_ut_profilo_pubblicato.ClientId%>").is(':checked')) {
                        $("#span_profilo_pubblicato").html('<%=Lingua.CaricaLingua("lgl_register_profilo_pubblicato")%>');
                    } else {
                        $("#span_profilo_pubblicato").html('<%=Lingua.CaricaLingua("lgl_register_profilo_non_pubblicato")%>');
                    }
                    //alert($("#<%=chk_ut_profilo_pubblicato.ClientId%>").is(':checked'));
                    PageMethods.SetProfiloPubblicato($("#<%=chk_ut_profilo_pubblicato.ClientId%>").is(':checked'), PMSuccess, PMFailure);
                }
            });

            Init_Crop_Avatar();
        }

        function Init_Crop_Avatar(){

            $('#image-avatar').cropit({ imageBackground: false, initialZoom: 'min' });
            $('#image-public').cropit(
            { 
                imageBackground: false, 
                initialZoom: 'min',
                onImageLoaded: function() {
                    //var cw = $('#cropit-public').width();
                    //alert(cw);
                    //$('#cropit-public').css({'height':cw/2 + 'px'});
                    resizeHandler();
                }
            });

            $('#rotate-cw-avatar').click(function() {
              $('#image-avatar').cropit('rotateCW');
              return false;
            });
            $('#rotate-ccw-avatar').click(function() {
              $('#image-avatar').cropit('rotateCCW');
              return false;
            });
            $('#rotate-cw-public').click(function() {
              $('#image-public').cropit('rotateCW');
              return false;
            });
            $('#rotate-ccw-public').click(function() {
              $('#image-public').cropit('rotateCCW');
              return false;
            });

        }

        $(document).ready(function () {
            reinit_js();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
        });

        $(window).load(function () {

        });

        function endRequestHandler(sender, args) {
            reinit_js();
        }
   
        function openCrop() {
            $('.crop_avatar').modal('show');
            $('#cropit-image-input').click();
        }

        function openCropPub() {
            var cw = $('#image-public').actual('width')
            $('#cropit-public').css({'height':cw/2 + 'px'});
            $('.crop_public').modal('show');
            $('#cropit-image-input-public').click();
        }

        function exportCrop() {
            var imageData = $('#image-avatar').cropit('export');
            //window.open(imageData);
            PageMethods.SetImmagineProfilo('A', imageData,
                function () {
                    javascript: __doPostBack('<%=btn_salva_immagini_hidden.UniqueID%>', '');
                },
                function (error) {
                    alert("Errore non gestito: " + error);
                });
        }

        function exportCropPublic() {
            var imageData = $('#image-public').cropit('export');
            //window.open(imageData);
            PageMethods.SetImmagineProfilo('P', imageData,
                function () {
                    javascript: __doPostBack('<%=btn_salva_immagini_hidden.UniqueID%>', '');
                },
                function (error) {
                    alert("Errore non gestito: " + error);
                });
        }
        

        function resizeHandler()
        {
            /**
             * Adjust the size of the preview area to be 100% of the image cropper container
             */
            if ( $('#image-public') )
            {
                var finalWidth  = 800, // The desired width for final image output
                    finalHeight = 400, // The desired height for final image output
                    sizeRatio   = finalHeight / finalWidth,
                    newWidth    = $('#image-public').width(),
                    newHeight   = newWidth * sizeRatio,
                    newZoom     = finalWidth / newWidth;
                $('#image-public').cropit('previewSize', { width: newWidth, height: newHeight });
                $('#image-public').cropit('exportZoom', newZoom);
                //alert(newWidth);
            }
        }

    </script>
        
</asp:Content>
