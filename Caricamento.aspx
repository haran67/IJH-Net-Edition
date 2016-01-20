<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Caricamento.aspx.vb" Inherits="JazzHub_Web.Caricamento" %>
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
    <section id="page-title">
        <div class="container clearfix">
            <h1><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h1>
            <ol class="breadcrumb">
                <li><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap">
    <div class="container clearfix">
        <div class="col_full">
            <div id="div_dati" runat="server">
                <ul class="nav nav-tabs" style="margin-bottom: 30px;">
                    <li><asp:LinkButton ID="btn_resume" runat="server">Riepilogo</asp:LinkButton></li>
                    <li class="active"><a href="#">Gestione video</a></li>
                    <li><asp:LinkButton ID="btn_modifica" runat="server">Modifica profilo</asp:LinkButton> </li>
                </ul>
                <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                    visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                        x
                    </button>
                    <i class="fa-lg fa fa-warning"></i><strong>Attenzione!</strong>
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
                    <cc:rDropDown ID="ddl_vc_categoria_key" runat="server" AutoPostBack="false" Label="Categoria"
                        Placeholder="Seleziona..." Form_Vertical="true" />
                    <cc:rTextBox ID="txt_titolo" runat="server" MaxLength="128" AutoPostBack="false"
                        Label="Titolo" Form_Vertical="true" />
                    <cc:rTextBox ID="txt_descrizione_breve" runat="server" TextMode="MultiLine" Rows="3" MaxLength="256"
                        AutoPostBack="false" Label="Abstract" Icon="" Form_Vertical="true" />
                    <cc:rTextBox ID="txt_descrizione" runat="server" TextMode="MultiLine" Rows="10" 
                        AutoPostBack="false" Label="Descrizione" Icon="" Form_Vertical="true" />
                </div>
                <div class="col_half col_last">    
                    <span for="upl_video" style="font-size:15px; color:Red;" id="span_upl_video" runat="server" visible="false">
                        <asp:Literal ID="ltl_msg_upl_video" runat="server"></asp:Literal></span>
                    <label for="login-form-username">
                        Copertina</label>
                    <div class="form-group">
                        <asp:Image ID="img_copertina" runat="server" Width="300" CssClass="thumbnail" />
                    </div> 
                    <label for="login-form-username">
                        Scegli la copertina (jpg,jpeg) - Dimensione consigliata (500*380) pixel </label>
                    <div class="form-group" id="div_upload_img" runat="server">
                        <telerik:RadAsyncUpload runat="server" ID="upl_foto" ChunkSize="1048576" AllowedFileExtensions="jpg,jpeg" 
                           Localization-Cancel="Cancella" Localization-Remove="Elimina" Localization-Select="Seleziona" EnableInlineProgress="false"
                           OnClientFilesUploaded="OnClientFileUploaded" MultipleFileSelection="Disabled" />
                    </div>
                    <div id="div_carica_video" runat="server">
                        <label for="login-form-username">
                            Scegli il video (mpg,mp4,m4v,mov) - Dimensione massima 300MB </label>
                        <div class="form-group" id="div_upload" runat="server">
                            <telerik:RadAsyncUpload runat="server" ID="upl_video" ChunkSize="1048576" AllowedFileExtensions="m4v,mp4,mov,mpg" 
                               Localization-Cancel="Cancella" Localization-Remove="Elimina" Localization-Select="Seleziona" EnableInlineProgress="false"
                               OnClientFilesUploaded="OnClientFileUploaded" MultipleFileSelection="Disabled" />
                        </div>
                    </div>
                    <telerik:RadProgressArea runat="server" ID="rpa_video" displaycancelbutton="True" 
                        ProgressIndicators="TimeElapsed, TimeEstimated, TransferSpeed, TotalProgress, TotalProgressPercent, TotalProgressBar"
                        Localization-ElapsedTime="Tempo trascorso" Localization-EstimatedTime="Tempo stimato" Localization-TransferSpeed="Velocità" 
                        Localization-Uploaded="Caricato" Localization-Cancel="Cancella" />
                    <div style="margin-top:30px;"></div>
                    <div class="form-group" id="div_bottone" runat="server">
                        <asp:LinkButton ID="btn_invia" runat="server" CssClass="button button-rounded nomargin">
                            Invia il video
                        </asp:LinkButton>
                    </div> 
                </div>
            </div>
        </div>
        <div class="col_full">
            <div class="fancy-title title-dotted-border">
                <h3>I tuoi video</h3>
            </div>
            <div class="col_one_third">
                <div class="feature-box center media-box fbox-bg">
                    <div class="fbox-media">
                        <iframe src="//player.vimeo.com/video/88318922?title=0&amp;byline=0&amp;portrait=0&amp;badge=0" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div>
                    <div class="fbox-desc">
                        <h3>Titolo #1<span class="subtitle">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare est tincidunt facilisis dignissim.</span></h3>
                    </div>
                </div>
            </div>
            <div class="col_one_third">
                <div class="feature-box center media-box fbox-bg">
                    <div class="fbox-media">
                        <iframe width="560" height="315" src="http://www.youtube.com/embed/SZEflIVnhH8" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="fbox-desc">
                        <h3>Titolo #2<span class="subtitle">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare est tincidunt facilisis dignissim.</span></h3>
                    </div>
                </div>
            </div>
            <div class="col_one_third col_last">
                <div class="feature-box center media-box fbox-bg">
                    <div class="fbox-media">
                        <iframe frameborder="0" width="560" height="315" src="http://www.dailymotion.com/embed/video/x1jr2kd" allowfullscreen></iframe>
                    </div>
                    <div class="fbox-desc">
                        <h3>Titolo #3<span class="subtitle">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare est tincidunt facilisis dignissim.</span></h3>
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
