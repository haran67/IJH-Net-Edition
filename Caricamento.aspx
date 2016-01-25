<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Caricamento.aspx.vb" Inherits="JazzHub_Web.Caricamento" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function OnClientFileUploaded(sender, args) {
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title" class="page-title-mini">
        <div class="container clearfix">
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h1>
            <ol class="breadcrumb">
                <li><asp:LinkButton ID="btn_indietro" runat="server"><%=Lingua.CaricaLingua("lgl_torna_profilo")%></asp:LinkButton></li>
                <li><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 20px 0">
        <div class="container clearfix">
            <div class="col_full">
                <div id="div_dati" runat="server">
                    <div class="fancy-title title-dotted-border">
                        <h3><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                    </div>
                    <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                        visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            x
                        </button>
                        <i class="fa-lg fa fa-warning"></i><strong><%=Lingua.CaricaLingua("lgl_attenzione")%></strong>
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
                    <div class="col_half">
                        <cc:rDropDown ID="ddl_vc_categoria_key" runat="server" AutoPostBack="false" 
                            Placeholder="Seleziona..." Form_Vertical="true" />
                        <cc:rTextBox ID="txt_titolo" runat="server" MaxLength="128" AutoPostBack="false"
                            Form_Vertical="true" />
                        <cc:rTextBox ID="txt_descrizione_breve" runat="server" TextMode="MultiLine" Rows="3" MaxLength="256"
                            AutoPostBack="false" Icon="" Form_Vertical="true" />
                        <cc:rTextBox ID="txt_descrizione" runat="server" TextMode="MultiLine" Rows="10" 
                            AutoPostBack="false" Icon="" Form_Vertical="true" />
                    </div>
                    <div class="col_half col_last">    
                        <span for="upl_video" style="font-size:15px; color:Red;" id="span_upl_video" runat="server" visible="false">
                            <asp:Literal ID="ltl_msg_upl_video" runat="server"></asp:Literal>
                        </span>
                        <label for="login-form-username">
                            <%=Lingua.CaricaLingua("lgl_caricamento_copertina")%></label>
                        <div class="form-group">
                            <asp:Image ID="img_copertina" runat="server" Width="300" CssClass="thumbnail" />
                        </div> 
                        <label for="login-form-username">
                            <%=Lingua.CaricaLingua("lgl_caricamento_copertina_help")%>
                            </label>
                        <div class="form-group" id="div_upload_img" runat="server">
                            <telerik:RadAsyncUpload runat="server" ID="upl_foto" ChunkSize="1048576" AllowedFileExtensions="jpg,jpeg" 
                               EnableInlineProgress="false" OnClientFilesUploaded="OnClientFileUploaded" MultipleFileSelection="Disabled" />
                        </div>
                        <div id="div_carica_video" runat="server">
                            <label for="login-form-username">
                                <%=Lingua.CaricaLingua("lgl_caricamento_video_help")%>
                            </label>
                            <div class="form-group" id="div_upload" runat="server">
                                <asp:Literal ID="ltl_video_tmp" runat="server"></asp:Literal>
                                <telerik:RadAsyncUpload runat="server" ID="upl_video" ChunkSize="1048576" AllowedFileExtensions="m4v,mp4,mov,mpg" 
                                   EnableInlineProgress="false" OnClientFilesUploaded="OnClientFileUploaded" MultipleFileSelection="Disabled" />
                            </div>
                        </div>
                        <telerik:RadProgressArea runat="server" ID="rpa_video" displaycancelbutton="True" 
                            ProgressIndicators="TimeElapsed, TimeEstimated, TransferSpeed, TotalProgress, TotalProgressPercent, TotalProgressBar" />
                        <div style="margin-top:30px;"></div>
                        <div class="form-group" id="div_bottone" runat="server">
                            <asp:LinkButton ID="btn_invia" runat="server" CssClass="button button-rounded nomargin"></asp:LinkButton>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=btn_invia.ClientId%>').attr('disabled', true);
        });

        function caricaVideo() {
            alert("Esegui l'upload del video");
        }
    </script>
</asp:Content>
