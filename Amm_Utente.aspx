<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Amm_Utente.aspx.vb" Inherits="JazzHub_Web.Amm_Utente" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextNumero.ascx" TagName="rTextNumero" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title">
        <div class="container clearfix">
            <h1>
                <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                | 
                <small><asp:LinkButton ID="btn_indietro" runat="server"><%=Lingua.CaricaLingua("lgl_torna_profilo")%></asp:LinkButton></small>
            </h1>
            <ol class="breadcrumb">
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
                        <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                            visible="false">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                x
                            </button>
                            <i class="fa-lg fa fa-warning"></i><strong>
                                <%=Lingua.CaricaLingua("lgl_attenzione")%></strong>
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
                                <div class="col_half">
                                    <cc:rDropDown ID="ddl_stato_pagamento" runat="server" CssClass="form-control"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_half col_last">
                                    <cc:rTextData ID="txt_data_pagamento" runat="server" MaxLength="100"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half">
                                    <cc:rDropDown ID="ddl_profilo_pagamento" runat="server" CssClass="form-control" AutoPostBack="true"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_half col_last">
                                    <cc:rTextNumero ID="txt_max_video" runat="server" MaxLength="100"
                                        CssClass="form-control" Form_Vertical="true" />
                                </div>
                                <div class="col_half">
                                    <cc:rDropDown ID="ddl_tipo_accesso" runat="server" CssClass="form-control" AutoPostBack="true"
                                        Form_Vertical="true" />
                                </div>
                                <div class="col_full col_last" style="margin-bottom: 0px;">
                                    <label for="chk_ut_attivo">
                                        <%=Lingua.CaricaLingua("lgl_register_attivo")%></label>
                                    <asp:CheckBox ID="chk_ut_attivo" runat="server" AutoPostBack="true" />
                                </div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <asp:LinkButton ID="btn_aggiorna_profilo" runat="server" CssClass="button button-rounded btn-block button-red nomargin">
                                        <%=Lingua.CaricaLingua("lgl_profilo_aggiorna_profilo")%> <i class="icon-check"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
