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
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h1>
            <ol class="breadcrumb hidden">
                <li><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 20px 0">
        <div class="container clearfix">
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: url('images/custom/jazz-bg-1.jpg') center center no-repeat;
                background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350"
                data-height-xs="250" data-height-xxs="200">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2>
                        <%=Lingua.CaricaLingua("lgl_pagamento_pagamento")%></h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <div class="col_full">
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
                        <h3 class="nopadding nomargin">
                            <%=Lingua.CaricaLingua("lgl_pagamento_conferma_profilo")%>
                        </h3> 
                        <div class="form-group">
                            <cc:rDropDown ID="ddl_profilo_pagamento" runat="server" CssClass="form-control" AutoPostBack="true"
                                Form_Vertical="true" />
                        </div>
                        <div class="form-group">
                            <img src="https://www.paypalobjects.com/webstatic/mktg/logo-center/logo_paypal_pagamento.jpg" border="0" alt="Marchi di accettazione PayPal" 
                                style="margin-right:20px;"/>
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
