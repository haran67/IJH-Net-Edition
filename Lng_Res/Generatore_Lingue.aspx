<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Generatore_Lingue.aspx.vb"
    MasterPageFile="~/Jazz.Master" MaintainScrollPositionOnPostback="false"
    ValidateRequest="false" Inherits="JazzHub_Web.lng_Resource" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title">
        <div class="container clearfix">
            <h1>
                <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
            </h1>
            <ol class="breadcrumb">
                <li><asp:LinkButton ID="btn_indietro" runat="server"><%=Lingua.CaricaLingua("lgl_torna_profilo")%></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 20px 0">
        <div class="container clearfix">
            <div class="col_full">
                <div class="box-header with-border">
                    <h3 class="box-title">
                        Gestione Lingue</h3>
                    <div class="box-tools pull-right">

                    </div>
                </div>
                <div class="box-body">
                    <div class="col-md-12">
                        <!-- Horizontal Form 1 -->
                        <div class="box box-info" id="div_news" runat="server">
                            <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server"
                                visible="false">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                    x
                                </button>
                                <i class="fa-lg fa fa-success"></i><strong>&nbsp;</strong>
                                <asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal>
                            </div>
                            <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                                visible="false">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                    x
                                </button>
                                <i class="fa-lg fa fa-warning"></i><strong>Attenzione!</strong>
                                <asp:Literal ID="ltl_messaggio_ko" runat="server"></asp:Literal>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <div class="form-horizontal">
                                <div class="box-body">
                                    <ul class="nav nav-tabs">
                                        <asp:Repeater ID="rpt_lingue_header" runat="server">
                                            <ItemTemplate>
                                                <li class="" id="li_tab_header" runat="server"><a href="#tab_1-1" data-toggle="tab"
                                                    aria-expanded="true" id="li_tab_a" runat="server">
                                                    <asp:Literal ID="ltl_lingua" runat="server"></asp:Literal>
                                                </a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                    <div style="height: 10px;">
                                    </div>
                                    <div class="tab-content">
                                        <asp:Repeater ID="rpt_lingue_tabs" runat="server">
                                            <ItemTemplate>
                                                <asp:Literal ID="ltl_lingua" runat="server" Visible="false"></asp:Literal>
                                                <div class="tab-pane" id="li_tab_a" runat="server">
                                                    <asp:Repeater ID="rpt_chiavi" runat="server" OnItemDataBound="rpt_chiavi_itemdatabound">
                                                        <ItemTemplate>
                                                            <div class="col-lg-4">
                                                                <asp:Label ID="lbl_name" runat="server" Visible="false"></asp:Label>
                                                                <cc:rTextBox ID="txt_valore" runat="server" AutoPostBack="false" Label="" Icon=""
                                                                    TextMode="MultiLine" Rows="1" Form_Vertical="true" />
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <asp:Literal ID="ltl_ultima_modifica" runat="server"></asp:Literal>
                                </div>
                                <div class="row"></div>
                                <div class="col_full" style="margin-bottom: 0px;">
                                    <asp:LinkButton ID="btn_compila" runat="server" CssClass="button button-rounded button-red nomargin">
                                        Compila
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="btn_salva" runat="server" CssClass="button button-rounded nomargin">
                                        Salva
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="btn_login" runat="server" CssClass="button button-rounded nomargin">
                                        Log In
                                    </asp:LinkButton>
                                </div>
                                <!-- /.box-footer -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
