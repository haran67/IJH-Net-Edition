<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    MaintainScrollPositionOnPostback="true" CodeBehind="Register.aspx.vb" Inherits="JazzHub_Web.Register" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h1 class="hidden"><%=Lingua.CaricaLingua("lgl_register_title")%></h1>
    <div class="content-wrap">
        <div class="section nomargin center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <div class="container clearfix" style="padding-top: 50px; padding-bottom: 30px">
                <asp:UpdatePanel ID="upd_register" runat="server">
                    <ContentTemplate>
                        <div class="alert alert-success display-hide" id="div_message_ok" runat="server">
                            <span>
                                <asp:Literal ID="ltl_message_ok" runat="server"></asp:Literal>
                            </span>
                        </div>
                        <div class="alert alert-danger display-hide" id="div_message_ko" runat="server">
                            <span style="font-size: 15px;">
                                <asp:Literal ID="ltl_message_ko" runat="server"></asp:Literal>
                            </span>
                        </div>
                        <div id="processTabs">
                            <ul class="process-steps process-2 bottommargin clearfix hidden">
                                <li><a id="process_1" href="#tab-principale" class="i-circled i-bordered i-alt divcenter icon-user2"
                                    onclick="setTab(0)"></a>
                                    <h5>
                                        <%=Lingua.CaricaLingua("lgl_register_info_principali")%></h5>
                                </li>
                                <li><a id="process_2" href="#tab-fatturazione" class="i-circled i-bordered i-alt divcenter icon-line2-wallet"
                                    onclick="setTab(1)"></a>
                                    <h5>
                                        <%=Lingua.CaricaLingua("lgl_register_dati_dettaglio")%></h5>
                                </li>
                            </ul>
                            <div class="divcenter" style="max-width: 700px">
                                <div id="register-form" name="register-form" class="nobottommargin">
                                    <div class="tab-content clearfix" id="tab-principale">
                                        <div class="panel panel-default divcenter" style="background-color: rgba(255,255,255,0.93);" id="div_dati_01" runat="server">
                                            <div class="panel-body" style="padding: 40px;">
                                                <div class="col_full nobottommargin center">
                                                    <h3 class="nopadding nomargin" style="font-weight: 400"><%=Lingua.CaricaLingua("lgl_register_registrati_inizia")%></h3>
                                                    <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important"  data-class-lg="not-hidden" data-class-md="not-hidden" data-class-sm="not-hidden" data-class-xs="not-hidden" data-class-xxs="hidden">
                                                        <i class="icon-arrow-down2"></i>
                                                    </div>
                                                </div>
                                                <div class="col_half nobottommargin">
                                                    <div class="text-lg-left text-md-left text-sm-left  text-xs-center">
                                                        <label class="noleftpadding">
                                                            <%=Lingua.CaricaLingua("lgl_register_che_utente")%>
                                                            <i class="hidden-xs icon-arrow-right2"></i>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col_half col_last nobottommargin">
                                                    <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin: 0px;">
                                                        <label>
                                                            <asp:RadioButton ID="rdb_tipo_utente_e" runat="server" GroupName="tipo_utente" Checked="true"
                                                                OnClick="$('#div_ruolo').show('slow'); $('#div_alert_guest').hide('slow');" />
                                                            <%=Lingua.CaricaLingua("lgl_register_utente_espositore")%>
                                                        </label>
                                                    </div>
                                                    <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin: 0px;">
                                                        <label>
                                                            <asp:RadioButton ID="rdb_tipo_utente_v" runat="server" GroupName="tipo_utente" Checked="false"
                                                                OnClick="$('#div_ruolo').hide('slow'); $('#div_alert_guest').hide('slow'); $('#div_fattura').show('slow');" />
                                                            <%=Lingua.CaricaLingua("lgl_register_utente_visitatore")%>
                                                        </label>
                                                    </div>
                                                    <div class="radio text-lg-left text-md-left text-sm-left text-xs-center" style="margin: 0px;
                                                        margin-bottom: 10px;">
                                                        <label>
                                                            <asp:RadioButton ID="rdb_tipo_utente_g" runat="server" GroupName="tipo_utente" Checked="false"
                                                                OnClick="$('#div_alert_guest').show('slow'); $('#div_ruolo').show('slow'); $('#div_fattura').hide('slow');" />
                                                            <%=Lingua.CaricaLingua("lgl_register_utente_guest")%>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col_full" style="margin-bottom: 0px; display: none;" id="div_alert_guest">
                                                    <div class="alert alert-info tleft">
                                                        <span style="font-size: 15px;">
                                                            <i class="icon-hand-up"></i> <%=Lingua.CaricaLingua("lgl_register_utente_guest_alert")%>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col_half" style="margin-bottom: 0px;">
                                                    <cc:rTextBox ID="txt_nome" runat="server" MaxLength="70" CssClass="form-control"
                                                        Form_Vertical="true" Required="false" />
                                                </div>
                                                <div class="col_half  col_last" style="margin-bottom: 0px;">
                                                    <cc:rTextBox ID="txt_cognome" runat="server" MaxLength="70" CssClass="form-control"
                                                        Form_Vertical="true" Required="false" />
                                                </div>
                                                <div class="col_full" style="margin-bottom: 0px;" id="div_ruolo">
                                                    <cc:rDropDown ID="ddl_tipo_utente" runat="server" CssClass="form-control" Form_Vertical="true" />
                                                </div>
                                                <div class="col_full" style="margin-bottom: 0px;">
                                                    <cc:rTextBox ID="txt_email" runat="server" MaxLength="100" CssClass="form-control"
                                                        Form_Vertical="true" Required="true" />
                                                </div>
                                                <div class="col_half">
                                                    <cc:rTextBox ID="txt_password" TextMode="Password" runat="server" MaxLength="100"
                                                        CssClass="form-control" Form_Vertical="true" Required="true" />
                                                </div>
                                                <div class="col_half col_last">
                                                    <cc:rTextBox ID="txt_password_repeted" TextMode="Password" runat="server" MaxLength="100"
                                                        CssClass="form-control" Form_Vertical="true" Required="true" />
                                                </div>
                                                <div class="col_full">
                                                    <div class="section nomargin" style="padding: 15px 20px; border: solid 1px #ccc;
                                                        font-style: italic">
                                                        <%=Lingua.CaricaLingua("lgl_register_autorizzazione_dati_txt")%>
                                                    </div>
                                                    <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center">
                                                        <label class="noleftpadding">
                                                            <asp:CheckBox ID="chk_autorizzazione" runat="server" />
                                                            <%=Lingua.CaricaLingua("lgl_register_autorizzazione_dati_dati")%>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col_full">
                                                    <div class="toggle" id="div_fattura">
                                                        <div class="togglet tleft" onclick="set_fatturazione()">
                                                            <i class="toggle-closed icon-ok-circle"></i><i class="toggle-open icon-remove-circle"></i><%=Lingua.CaricaLingua("lgl_register_bisogno_fattura")%>
                                                        </div>
                                                        <div class="togglec noleftpadding" style="display: none;" id="div_togglec" runat="server">
                                                            <div class="col_half nobottommargin">
                                                                <div class="text-lg-left text-md-left text-sm-left  text-xs-center">
                                                                    <label class="noleftpadding">
                                                                        <%=Lingua.CaricaLingua("lgl_register_che_soggetto")%>
                                                                        <i class="hidden-xs icon-arrow-right2"></i>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="col_half col_last nobottommargin">
                                                                <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin: 0px;">
                                                                    <label>
                                                                        <asp:RadioButton ID="rdb_tipo_giuridico_p" runat="server" GroupName="tipo_giuridico"
                                                                            Checked="true" AutoPostBack="true" />
                                                                        <%=Lingua.CaricaLingua("lgl_register_utente_privato")%>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="col_one_fourth col_last nobottommargin">
                                                                <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin: 0px;">
                                                                    <label>
                                                                        <asp:RadioButton ID="rdb_tipo_giuridico_a" runat="server" GroupName="tipo_giuridico"
                                                                            Checked="false" AutoPostBack="true" />
                                                                        <%=Lingua.CaricaLingua("lgl_register_utente_azienda")%>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="col_full" id="div_ragione_sociale" runat="server" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_ragione_sociale" name="txt_ragione_sociale" runat="server" MaxLength="256"
                                                                    CssClass="form-control" Form_Vertical="true" />
                                                            </div>
                                                            <div class="col_half" id="div_codice_fiscale" runat="server" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_codice_fiscale" name="txt_codice_fiscale" runat="server" MaxLength="16"
                                                                    CssClass="form-control" Form_Vertical="true" />
                                                            </div>
                                                            <div class="col_half col_last" id="div_partita_iva" runat="server" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_partita_iva" name="txt_partita_iva" runat="server" MaxLength="12"
                                                                    CssClass="form-control" Form_Vertical="true" />
                                                            </div>
                                                            <div class="clearfix">
                                                                <div class="col_half nobottommargin">
                                                                    <div class="text-lg-left text-md-left text-sm-left  text-xs-center">
                                                                        <label for="chk_stato_estero"><%=Lingua.CaricaLingua("lgl_register_indirizzo_estero")%> <i class="hidden-xs icon-arrow-right2"></i></label>
                                                                    </div>
                                                                </div>
                                                                <div class="col_half col_last nobottommargin">
                                                                    <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin: 0px;">
                                                                        <asp:CheckBox ID="chk_stato_estero" runat="server" AutoPostBack="true" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="clearfix">
                                                                <div class="col_half" id="div_provincia" runat="server" style="margin-bottom: 0px;">
                                                                    <cc:rDropDown ID="ddl_provincia" runat="server" CssClass="form-control" AutoPostBack="true"
                                                                        Form_Vertical="true" />
                                                                </div>
                                                                <div class="col_half col_last" id="div_comune" runat="server" style="margin-bottom: 0px;">
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
                                                            </div>
                                                            <div class="col_one_third" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_cap" runat="server" MaxLength="5" CssClass="form-control" Form_Vertical="true" />
                                                            </div>
                                                            <div class="col_two_third col_last" id="div_localita" runat="server" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_localita" runat="server" MaxLength="128" CssClass="form-control"
                                                                    Form_Vertical="true" />
                                                            </div>
                                                            <div class="col_two_third col_last" id="div_stato_estero" runat="server" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_stato_estero" name="txt_localita" runat="server" MaxLength="128"
                                                                    CssClass="form-control" Form_Vertical="true" />
                                                            </div>
                                                            <div class="col_full" style="margin-bottom: 0px;">
                                                                <cc:rTextBox ID="txt_indirizzo" name="txt_indirizzo" runat="server" MaxLength="255"
                                                                    CssClass="form-control" Form_Vertical="true" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col_full nobottommargin">
                                                    <div class="col_full nobottommargin text-lg-right text-md-right text-sm-right text-center  center text-xs-center">
                                                        <asp:LinkButton ID="btn_registrati" runat="server" CssClass="button button-rounded btn-block button-success nomargin">
                                                            <%=Lingua.CaricaLingua("lgl_register_registrati")%></i>
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default nobottommargin" id="div_dati_02" runat="server" visible="false">
                                            <div class="panel-body" style="padding: 40px;">
                                                <div class="col_full nobottommargin center">
                                                    <h3 class="nopadding nomargin">
                                                        <%=Lingua.CaricaLingua("lgl_index_accedi_guest_termonata")%></h3>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="tab-content clearfix hidden" id="tab-fatturazione">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
        var fatturazione = false;

        function set_fatturazione() {
            fatturazione = !fatturazione;
            PageMethods.SetFatturazione(fatturazione, AKSuccess, AKFailure);
        }

        function AKSuccess(result) {
            try {
                //alert(fatturazione);
            }
            catch (err) {

            }
        }
        function AKFailure(error) {
            alert(error);
        }


        var my_tab = 0;

        $(document).ready(function () {
            //Init_Tab();
            //Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
        });

        function endRequestHandler(sender, args) {
            //Init_Tab();
            //setTab(my_tab);
        }

        function Init_Tab() {
            //        $("#processTabs").tabs({
            //            show: {
            //                effect: "fade",
            //                duration: 400
            //            }
            //        });

            //        $(".tab-linker").click(function () {
            //            //alert($(this).attr('rel'));
            //            setTab($(this).attr('rel'));
            //            return false;
            //        });

        }

        function setTab(tab) {
            //alert(tab);
            //my_tab = tab;
            //$("#processTabs").tabs("option", "active", tab);
        }
    
    </script>
</asp:Content>
