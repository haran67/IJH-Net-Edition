<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Pagamento.aspx.vb" Inherits="JazzHub_Web.Pagamento" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title page-title-mini">
        <div class="container clearfix">
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal> - <%=Lingua.CaricaLingua("lgl_pagamento_pagamento")%></h1>
            <ol class="breadcrumb hidden">
                <li><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 0">
        <div class="section nomargin center parallax patch-wallpaper" data-stellar-background-ratio="0.3" data-class-xxs="notoppadding">
            <div class="container clearfix" style="padding-top: 50px; padding-bottom:30px">
                <div class="divcenter" style="max-width: 500px">
                    <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                        visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            x</button>
                        <i class="fa-lg fa fa-warning"></i><strong>
                            <%=Lingua.CaricaLingua("lgl_attenzione")%></strong><asp:Literal ID="ltl_messaggio_ko"
                                runat="server"></asp:Literal>
                    </div>
                    <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server"
                        visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            x</button>
                        <strong>
                            <asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal></strong>
                    </div>
                    <div class="panel panel-default divcenter" style="background-color: #fff;">
                        <div class="panel-body" style="padding: 40px;">
                            <div class="col_full nobottommargin center">
                                <h3 class="nopadding nomargin"><%=Lingua.CaricaLingua("lgl_pagamento_conferma_profilo")%></h3>
                                <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important" data-class-lg="not-hidden" data-class-md="not-hidden" data-class-sm="not-hidden" data-class-xs="not-hidden" data-class-xxs="hidden">
                                    <i class="icon-arrow-down2"></i>
                                </div>
                            </div>
                            <div class="form-group">
                                <cc:rDropDown ID="ddl_profilo_pagamento" runat="server" CssClass="form-control" AutoPostBack="true"
                                    Form_Vertical="true" />
                            </div>
                            <div class="form-group">
                                <%=Lingua.CaricaLingua("lgl_pagamento_torna_esercente")%>
                            </div> 
                            <div class="form-group">
                                <img src="https://www.paypalobjects.com/webstatic/mktg/logo-center/logo_paypal_pagamento.jpg" border="0" alt="Marchi di accettazione PayPal" 
                                    style="margin-right:20px; padding: 0 20px; background-color: #fff;"/>
                                <asp:LinkButton ID="btn_paga_pp" runat="server">
                                    <img src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" alt="PayPal - The safer, easier way to pay online!" />
                                </asp:LinkButton>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
