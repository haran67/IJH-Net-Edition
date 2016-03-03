<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Amministrazione.aspx.vb" Inherits="JazzHub_Web.Amministrazione" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="/Controls/rCheckBox.ascx" TagName="rCheckBox" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="page-title">
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
                    <div class="">
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
                        <ul class="nav nav-tabs" style="margin-bottom: 30px;">
                            <li class="active" id="li_riepilogo" runat="server">
                                <asp:LinkButton ID="btn_resume" runat="server"><%=Lingua.CaricaLingua("lgl_amministrazione_riepilogo")%></asp:LinkButton>
                            </li>
                            <li id="li_video" runat="server">
                                <asp:LinkButton ID="btn_gestione_video" runat="server"><%=Lingua.CaricaLingua("lgl_amministrazione_gestione_video")%></asp:LinkButton>
                            </li>
                            <li id="li_utenti" runat="server">
                                <asp:LinkButton ID="btn_gestione_utenti" runat="server"><%=Lingua.CaricaLingua("lgl_amministrazione_gestione_utenti")%></asp:LinkButton>
                            </li>
                        </ul>
                        <div id="div_riepilogo" runat="server">
                            <div class="col-md-4 center" data-class-lg="col_div_vert" data-class-md="col_div_vert" data-class-sm="col_div_horiz" data-class-xs="col_div_horiz" data-class-xxs="col_div_horiz">
                                <i class="i-plain i-xlarge divcenter nobottommargin icon-eye"></i>
                                <h3 class="counter counter-large">
                                    <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_video"
                                        runat="server"><asp:Literal ID="ltl_count_video" runat="server"></asp:Literal></span>
                                </h3>
                                <h5><%=Lingua.CaricaLingua("lgl_amministrazione_video_caricati")%></h5>
                            </div>
                            <div class="col-md-4 center" data-class-lg="col_div_vert" data-class-md="col_div_vert" data-class-sm="col_div_horiz" data-class-xs="col_div_horiz" data-class-xxs="col_div_horiz">
                                <i class="i-plain i-xlarge divcenter nobottommargin icon-thumbs-up2"></i>
                                <h3 class="counter counter-large">
                                    <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_user"
                                        runat="server"><asp:Literal ID="ltl_count_user" runat="server"></asp:Literal></span>
                                </h3>
                                <h5><%=Lingua.CaricaLingua("lgl_amministrazione_utenti_registrati")%></h5>
                            </div>
                                <div class="col-md-4 center col_last" data-class-lg="col_div_vert" data-class-md="col_div_vert" data-class-sm="col_div_horiz" data-class-xs="col_div_horiz" data-class-xxs="col_div_horiz">
                                <i class="i-plain i-xlarge divcenter nobottommargin icon-comment"></i>
                                <h3 class="counter counter-large">
                                    <span data-from="0" data-to="0" data-refresh-interval="50" data-speed="2500" id="span_count_comment"
                                        runat="server"><asp:Literal ID="ltl_count_comment" runat="server"></asp:Literal></span>
                                </h3>
                                <h5><%=Lingua.CaricaLingua("lgl_amministrazione_commenti")%></h5>
                            </div>
                        </div>
                        <div id="div_gestione_video" runat="server">
                            <nav class="navbar navbar-default" role="navigation" style="margin-top: 20px;">
                                <div class="container-fluid">
                                    <!-- Switch per mobile -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand" href="#"><%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per")%></a>
                                    </div>

                                    <!-- Parte per link, form ecc ecc -->
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav nobottommargin">
                                            <li id="li_filter_pubblicati" runat="server">
                                                <asp:LinkButton ID="btn_filtra_pubblicati" runat="server">
                                                    <%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per_pub")%>
                                                </asp:LinkButton>
                                            </li>
                                            <li id="li_filter_highlight" runat="server">
                                                <asp:LinkButton ID="btn_filtra_home_page" runat="server">
                                                    <%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per_highlight")%>
                                                </asp:LinkButton>
                                            </li>
                                            <li id="li_filter_primo_piano" runat="server">
                                                <asp:LinkButton ID="btn_filtra_primo_piano" runat="server">
                                                    <%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per_pri")%>
                                                </asp:LinkButton>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per_cat")%> <b class="caret"></b></a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <asp:Repeater ID="rpt_filter_categorie" runat="server">
                                                        <ItemTemplate>
                                                            <li style="margin:5px;">
                                                                <asp:CheckBox ID="chk_categoria" runat="server" />&nbsp;
                                                                <asp:Literal ID="ltl_categoria" runat="server"></asp:Literal>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </li>
                                        </ul>
                                        <div class="navbar-form navbar-left nobottommargin" role="search">
                                            <div class="form-group">
                                                <asp:TextBox ID="txt_cerca" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <asp:Button ID="btn_cerca" runat="server" CssClass="btn btn-default" />
                                        </div>
                                        <div class="navbar-form navbar-right nobottommargin" role="search">
                                            <asp:Button ID="btn_operazione" runat="server" CssClass="btn btn-danger" Text="ONE SHOT" />
                                        </div>
                                    </div><!-- /.navbar-collapse -->
                                </div><!-- /.container-fluid -->
                            </nav>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width:1px;">#</th>
                                            <th style="width:35%;"><%=Lingua.CaricaLingua("lgl_amministrazione_video_titolo")%></th>
                                            <th style="width:25%;"><%=Lingua.CaricaLingua("lgl_amministrazione_video_utente")%></th>
                                            <th style="width:10%;"><%=Lingua.CaricaLingua("lgl_amministrazione_video_highlight")%></th>
                                            <th style="width:10%;"><%=Lingua.CaricaLingua("lgl_amministrazione_video_primo")%></th>
                                            <th style="width:10%;"><%=Lingua.CaricaLingua("lgl_amministrazione_video_pubblicato")%></th>
                                            <th colspan="2" style="width:20%;"><%=Lingua.CaricaLingua("lgl_amministrazione_video_thumb")%></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rpt_video" runat="server">
                                            <ItemTemplate>
                                                <tr class="" id="tr_video" runat="server">
                                                    <td><asp:Literal ID="ltl_key" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_video" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></td>
                                                    <td><asp:CheckBox ID="chk_home_page" runat="server" AutoPostBack="true" OnCheckedChanged="chk_home_page_CheckedChanged" /></td>
                                                    <td><asp:CheckBox ID="chk_primo_piano" runat="server" AutoPostBack="true" OnCheckedChanged="chk_primo_piano_CheckedChanged" /></td>
                                                    <td><asp:CheckBox ID="chk_pubblicato" runat="server" AutoPostBack="true" OnCheckedChanged="chk_pubblicato_CheckedChanged" /></td>
                                                    <td><asp:Image ID="img_copertina" runat="server" Height="50"/></td>
                                                    <td>
                                                        <asp:LinkButton ID="btn_preview" runat="server" CssClass="btn btn-primary btn-xs" CommandName="PVW">
                                                            <%=Lingua.CaricaLingua("lgl_amministrazione_video_genera")%>
                                                        </asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div id="div_gestione_utenti" runat="server">
                            <nav class="navbar navbar-default" role="navigation" style="margin-top: 20px;">
                                <div class="container-fluid">
                                    <!-- Switch per mobile -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand" href="#"><%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per")%></a>
                                    </div>

                                    <!-- Parte per link, form ecc ecc -->
                                    <div class="collapse navbar-collapse">
                                        <ul class="nav navbar-nav nobottommargin hidden">
                                            <li class="active"><a href="#"><%=Lingua.CaricaLingua("lgl_amministrazione_filtra_per_paga")%></a></li>
                                        </ul>
                                        <div class="navbar-form navbar-left nobottommargin" role="search">
                                            <div class="form-group">
                                                <asp:TextBox ID="txt_cerca_utente" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <asp:Button ID="btn_cerca_utente" runat="server" CssClass="btn btn-default" />
                                        </div>
                                        <div class="navbar-form navbar-left nobottommargin">
                                            <asp:Button ID="btn_esporta" runat="server" CssClass="btn btn-default" />
                                        </div>
                                    </div><!-- /.navbar-collapse -->
                                </div><!-- /.container-fluid -->
                            </nav>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width:1px;">#</th>
                                            <th style="width:30%;"><%=Lingua.CaricaLingua("lgl_amministrazione_utente_utente")%></th>
                                            <th style="width:20%;"><%=Lingua.CaricaLingua("lgl_amministrazione_utente_tipo")%></th>
                                            <th style="width:20%;"><%=Lingua.CaricaLingua("lgl_amministrazione_utente_email")%></th>
                                            <th style="width:20%;"><%=Lingua.CaricaLingua("lgl_amministrazione_utente_stato")%></th>
                                            <th style="width:10%;"><%=Lingua.CaricaLingua("lgl_amministrazione_utente_video")%></th>
                                            <th style="width:1px;" colspan="2"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rpt_utenti" runat="server">
                                            <ItemTemplate>
                                                <tr class="" id="tr_utente" runat="server">
                                                    <td><asp:Literal ID="ltl_key" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_tipologia" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_mail" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_pagamento" runat="server"></asp:Literal></td>
                                                    <td><asp:Literal ID="ltl_video_caricati" runat="server"></asp:Literal></td>
                                                    <td>
                                                        <asp:LinkButton ID="btn_go" runat="server" CssClass="btn btn-primary btn-xs" CommandName="GO">
                                                            <%=Lingua.CaricaLingua("lgl_amministrazione_utente_dettagli")%>
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>
                                                        <asp:LinkButton ID="btn_mail" runat="server" CssClass="btn btn-warning btn-xs" CommandName="SOLLECITA">
                                                            <%=Lingua.CaricaLingua("lgl_amministrazione_utente_sollecito")%>
                                                        </asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btn_esporta" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:DataGrid id="DGExport" runat="server" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="true">
			<AlternatingItemStyle BackColor="#fefefe"></AlternatingItemStyle>
			<ItemStyle ForeColor="Black" BackColor="#ffffff"></ItemStyle>
			<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#666666" HorizontalAlign="Left"></HeaderStyle>
			<FooterStyle ForeColor="#666666" BackColor="#ffffff"></FooterStyle>
    </asp:DataGrid> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
