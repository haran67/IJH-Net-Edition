﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" MaintainScrollPositionOnPostback="true"
    CodeBehind="Register.aspx.vb" Inherits="JazzHub_Web.Register" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title">
        <div class="container clearfix">
            <h1><%=Lingua.CaricaLingua("lgl_register_title")%></h1>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap">
        <div class="container clearfix">
            <asp:UpdatePanel ID="upd_register" runat="server">
                <ContentTemplate>
                    <div class="alert alert-success display-hide" id="div_message_ok" runat="server">
                        <span>
                            <asp:Literal ID="ltl_message_ok" runat="server"></asp:Literal>
                        </span>
                    </div>
                    <div class="alert alert-danger display-hide" id="div_message_ko" runat="server">
                        <span style="font-size:15px;">
                            <asp:Literal ID="ltl_message_ko" runat="server"></asp:Literal>
                        </span>
                    </div>
                    <div id="processTabs">
                        <ul class="process-steps process-2 bottommargin clearfix hidden">
                            <li><a id="process_1" href="#tab-principale" class="i-circled i-bordered i-alt divcenter icon-user2"  onclick="setTab(0)"></a>
                                <h5>
                                    <%=Lingua.CaricaLingua("lgl_register_info_principali")%></h5>
                            </li>
                            <li><a id="process_2"  href="#tab-fatturazione" class="i-circled i-bordered i-alt divcenter icon-line2-wallet" onclick="setTab(1)">
                            </a>
                                <h5>
                                    <%=Lingua.CaricaLingua("lgl_register_dati_dettaglio")%></h5>
                            </li>
                        </ul>
                        <div class="divcenter" style="max-width: 700px">
                            <div id="register-form" name="register-form" class="nobottommargin">
                                <div class="tab-content clearfix" id="tab-principale">
                                    <div class="panel panel-default nobottommargin" id="div_dati_01" runat="server">
                                        <div class="panel-body" style="padding: 40px;">
                                            <div class="col_half nobottommargin">
                                                <div class="text-lg-left text-md-left text-sm-left  text-xs-center">
                                                    <label class="noleftpadding">
                                                        <%=Lingua.CaricaLingua("lgl_register_che_utente")%> <i class="hidden-xs icon-arrow-right2"></i>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col_one_fourth nobottommargin">
                                                <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin:0px;">
                                                    <label>
                                                        <asp:RadioButton ID="rdb_tipo_utente_e" runat="server" GroupName="tipo_utente" Checked="true" />
                                                        <%=Lingua.CaricaLingua("lgl_register_utente_espositore")%>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col_one_fourth col_last nobottommargin">
                                                <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin:0px;">
                                                    <label>
                                                        <asp:RadioButton ID="rdb_tipo_utente_v" runat="server" GroupName="tipo_utente" Checked="false" />
                                                        <%=Lingua.CaricaLingua("lgl_register_utente_visitatore")%>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="divider divider-center">
                                                <i class="icon-arrow-down2"></i>
                                            </div>
                                            <div class="col_half" style="margin-bottom:0px;">
                                                <cc:rTextBox ID="txt_nome" runat="server" MaxLength="70" CssClass="form-control"
                                                     Form_Vertical="true" Required="true" />
                                            </div>
                                            <div class="col_half  col_last" style="margin-bottom:0px;">
                                                <cc:rTextBox ID="txt_cognome" runat="server" MaxLength="70" CssClass="form-control"
                                                     Form_Vertical="true" Required="true" />
                                            </div>
                                            <div class="col_full" style="margin-bottom:0px;">
                                                <cc:rDropDown ID="ddl_tipo_utente" runat="server" CssClass="form-control" 
                                                     Form_Vertical="true" Required="true" />
                                            </div>
                                            <div class="col_full" style="margin-bottom:0px;">
                                                <cc:rTextBox ID="txt_email" runat="server" MaxLength="100" CssClass="form-control"
                                                     Form_Vertical="true" Required="true" />
                                            </div>
                                            <div class="col_half">
                                                <cc:rTextBox ID="txt_password" TextMode="Password" runat="server" MaxLength="100" CssClass="form-control"
                                                     Form_Vertical="true" Required="true" />
                                            </div>
                                            <div class="col_half col_last">
                                                <cc:rTextBox ID="txt_password_repeted" TextMode="Password" runat="server" MaxLength="100" CssClass="form-control"
                                                     Form_Vertical="true" Required="true" />
                                            </div>
                                            <div class="col_full">
                                                <%=Lingua.CaricaLingua("lgl_register_autorizzazione_dati_txt")%>
                                                <br /><br />
                                                <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin:0px;">
                                                    <label>
                                                        <asp:Checkbox ID="chk_autorizzazione" runat="server" AutoPostBack="true" />
                                                        <%=Lingua.CaricaLingua("lgl_register_autorizzazione_dati_dati")%>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col_full">
                                                <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin:0px;">
                                                    <label>
                                                        <asp:Checkbox ID="chk_fatturazione" runat="server" AutoPostBack="true" />
                                                        <%=Lingua.CaricaLingua("lgl_register_bisogno_fattura")%>
                                                    </label>
                                                </div>
                                            </div>
                                            <!--div class="panel-body" style="padding: 40px;"-->
                                            <div id="div_fatturazione" runat="server" visible="false">
                                                <div class="col_half nobottommargin">
                                                    <div class="text-lg-left text-md-left text-sm-left  text-xs-center">
                                                        <label class="noleftpadding">
                                                            <%=Lingua.CaricaLingua("lgl_register_che_soggetto")%> <i class="hidden-xs icon-arrow-right2"></i>
                                                        </label>
                                                    </div>
                                                </div> 
                                                <div class="col_one_fourth nobottommargin">
                                                    <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin:0px;">
                                                        <label>
                                                            <asp:RadioButton ID="rdb_tipo_giuridico_p" runat="server" GroupName="tipo_giuridico" Checked="true" AutoPostBack="true" />
                                                            <%=Lingua.CaricaLingua("lgl_register_utente_privato")%>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col_one_fourth col_last nobottommargin">
                                                    <div class="radio text-lg-left text-md-left text-sm-left  text-xs-center" style="margin:0px;">
                                                        <label>
                                                            <asp:RadioButton ID="rdb_tipo_giuridico_a" runat="server" GroupName="tipo_giuridico" Checked="false" AutoPostBack="true" />
                                                            <%=Lingua.CaricaLingua("lgl_register_utente_azienda")%>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col_full" id="div_ragione_sociale" runat="server" style="margin-bottom:0px;">
                                                    <cc:rTextBox ID="txt_ragione_sociale" name="txt_ragione_sociale" runat="server" MaxLength="256" 
                                                        CssClass="form-control" Form_Vertical="true" />
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
                                                         Form_Vertical="true" Required="true" />
                                                </div>
                                                <div class="col_two_third col_last" id="div_localita" runat="server" style="margin-bottom:0px;">
                                                    <cc:rTextBox ID="txt_localita" runat="server" MaxLength="128" CssClass="form-control"
                                                         Form_Vertical="true" />
                                                </div>
                                                <div class="col_two_third col_last" id="div_stato_estero" runat="server" style="margin-bottom:0px;">
                                                    <cc:rTextBox ID="txt_stato_estero" name="txt_localita" runat="server" MaxLength="128" CssClass="form-control"
                                                         Form_Vertical="true" />
                                                </div>
                                                <div class="col_full" style="margin-bottom:0px;">
                                                    <cc:rTextBox ID="txt_indirizzo" name="txt_indirizzo" runat="server" MaxLength="255" CssClass="form-control"
                                                         Form_Vertical="true" Required="true" />
                                                </div>
                                            </div>
                                            <div class="col_full nobottommargin text-lg-right text-md-right text-sm-right  text-xs-center hidden">
                                                <button class="button button-rounded nomargin tab-linker" rel="1" id="next" name="dati"
                                                    value="next">
                                                    <%=Lingua.CaricaLingua("lgl_register_dati_dettaglio_b")%> <i class="icon-arrow-right2"></i>
                                                </button>
                                            </div>
                                            <div class="col_full nobottommargin">
                                                <div class="col_half nobottommargin  text-lg-right text-md-right text-sm-right  text-xs-center">
                                                    <asp:LinkButton ID="btn_registrati" runat="server" CssClass="button button-rounded nomargin">
                                                        <%=Lingua.CaricaLingua("lgl_register_registrati")%> <i class="icon-check"></i>
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="col_half col_last nobottommargin text-lg-left text-md-left text-sm-left  text-xs-center hidden">
                                                    <button class="button button-rounded nomargin tab-linker" rel="0" id="register-form-submit"
                                                        name="register-form-submit" value="register">
                                                        <i class="icon-arrow-left2"></i><%=Lingua.CaricaLingua("lgl_register_dati_principali_b")%></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content clearfix" id="tab-fatturazione">
                                    <div class="panel panel-default nobottommargin" id="div_dati_02" runat="server">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
<script type="text/javascript">
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
