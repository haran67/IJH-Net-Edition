<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Caricamento.aspx.vb" Inherits="JazzHub_Web.Caricamento" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register Src="/Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="/Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="/Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ register tagprefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/js/maxlength/jquery.maxlength.css" type="text/css" />
    <script type="text/javascript" src="/js/maxlength/jquery.plugin.min.js"></script>
    <script type="text/javascript" src="/js/maxlength/jquery.maxlength.min.js"></script>
    <script type="text/javascript" src="/js/jquery.cropit.js"></script>
    <script type="text/javascript" src="/js/jquery.actual.min.js"></script>
    <link rel="stylesheet" href="/js/select2/select2.css"/>
    <link rel="stylesheet" href="/js/select2/select2_jazz.css"/>
    <script type="text/javascript" src="/js/select2/select2.min.js"></script>
    <telerik:RadCodeBlock ID="RadCodeBlock2" runat="server">
    <script type="text/javascript" src="/js/select2/select2_locale_<%=select2_locale%>.js"></script>
    <script type="text/javascript">
        var selectedItems;

        function setMultipleSelect(val) {
            //alert(val);
            //select2_selected_items = val;
            selectedItems = val.split(',');
            //select2_object = '#ddl_video_tag';
        }

        function Init_Select2() {
            if ($().select2) {
                //alert($('select.select2me'));
                $('select.select2me').select2({
                    placeholder: "Select",
                    allowClear: true
                });
            }
        }

        function Init_MultipleSelect2() {
            if ($().select2) {
                $('select[multiple="multiple"]').each(function () {
                    $('.select2-search-choice').remove();
                    $(this).on("change", function (e) {
                        //alert("change val=" + e.val);
                        PageMethods.SalvaSelect2MultipleValues(e.val, PMSuccess, PMFailure);
                    })
                });
            }
        }

        $(function () {
            $('#<%=txt_descrizione_breve.txt_Client_Id%>').maxlength({ feedbackText: '<%=Lingua.CaricaLingua("lgl_usati")%> {c} <%=Lingua.CaricaLingua("lgl_di")%> {m}' });
        });

        function OnClientFileUploaded(sender, args) {
        }

    </script>
    </telerik:RadCodeBlock> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <section class="page-title page-title-mini">
        <div class="container clearfix">
            <h1 style="font-weight: 400; display: none"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></h1>
            <h1 style="font-weight: 400;"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h1>
            <ol class="breadcrumb">
                <li><asp:LinkButton ID="btn_indietro" runat="server"  style="background:#e33; padding: 5px 10px; color: #fff; font-weight: 600; border-radius: 3px"><%=Lingua.CaricaLingua("lgl_torna_profilo")%></asp:LinkButton></li>
                <li class="hidden"><asp:LinkButton ID="btn_esci" runat="server" CssClass="icon-line2-logout"></asp:LinkButton></li>
            </ol>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap" style="padding: 20px 0">
        <div class="container clearfix">
            <div class="col_full">
                <div id="div_dati" runat="server">
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
                        <cc:rTextBox ID="txt_titolo" runat="server" MaxLength="128" AutoPostBack="true"
                            Form_Vertical="true" />
                        <cc:rTextBox ID="txt_descrizione_breve" runat="server" TextMode="MultiLine" Rows="3" MaxLength="256"
                            AutoPostBack="false" Icon="" Form_Vertical="true" />
                        <cc:rTextBox ID="txt_descrizione" runat="server" TextMode="MultiLine" Rows="10" 
                            AutoPostBack="false" Icon="" Form_Vertical="true" />
                    </div>
                    <div class="col_half col_last">
                        <div class="form-group select-left">
                            <label for="to" class="">
                                <%=Lingua.CaricaLingua("lgl_caricamento_tag")%></label>
                            <select ID="ddl_video_tag" multiple="multiple" class="select2me form-control"
                                placeholder="<%=Lingua.CaricaLingua("lgl_caricamento_seleziona_tag")%>">
                                <%=option_tag%>
                            </select>
                        </div>     
                        <span style="font-size:15px; color:Green;">
                            <cc:rTextBox ID="txt_urlrewrite" runat="server" Read_Only="true" Form_Vertical="true" />
                        </span>   
                        <span for="upl_video" style="font-size:15px; color:Red;" id="span_upl_video" runat="server" visible="false">
                            <asp:Literal ID="ltl_msg_upl_video" runat="server"></asp:Literal>
                        </span>


                        <div class="" style="margin-bottom:20px;" id="div_immagine" runat="server">
                            <label><%=Lingua.CaricaLingua("lgl_caricamento_copertina")%></label>
                            <div class="clear"></div>
                            <div class="center" style="position: relative; width: 300px; height: 228px;" data-class-lg="fleft" data-class-md="fleft" data-class-sm="fleft" data-class-xs="divcenter" data-class-xxs="divcenter">
                                <asp:ImageButton ID="img_copertina" runat="server" CssClass="thumbnail" style="max-width: 300px; max-height: 228px; display: inline-block;margin: 0 !important;" />
                                <a href="#" onClick="openCrop(); return false;" class="image-action inverse" data-toggle="modal" data-target="" id="btn_carica_avatar" runat="server">
                                    <!--<%=Lingua.CaricaLingua("lgl_profilo_carica_immagine")%>-->
                                        <span><i class="icon-camera"></i></span>
                                </a>
                                <asp:LinkButton ID="btn_cancella_foto" class="image-action" runat="server" >
                                    <!--<%=Lingua.CaricaLingua("lgl_profilo_cancella_immagine")%>-->
                                        <i class="icon-remove"></i>
                                </asp:LinkButton>
                            </div>
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
                            <asp:LinkButton ID="btn_invia" runat="server" CssClass="button button-success button-rounded " style="margin-top:20px!Important;"></asp:LinkButton>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:LinkButton ID="btn_salva_immagini_hidden" runat="server" style="display:none;" />
    <div class="modal fade bs-example-modal-lg crop_avatar" tabindex="-1" role="dialog" aria-labelledby="test" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 580px;">
            <div class="modal-body">
                <div class="modal-content" style="max-width: 580px;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="H1"><%=Lingua.CaricaLingua("lgl_caricamento_carica_copertina")%></h4>
                    </div>
                    <div class="modal-body">
                        <div class="col_full center">
                            <div id="image-avatar">
                                <input type="file" class="cropit-image-input" id="cropit-image-input">
                                <div class="cropit-preview" style="width: 500px; height: 380px; margin: 10px auto">
                                </div>
                                <div class="image-size-label hidden">
                                    <%=Lingua.CaricaLingua("lgl_profilo_ridimensiona_immagine")%>
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
                                <%=Lingua.CaricaLingua("lgl_profilo_salva_immagine")%>
                            </asp:LinkButton>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    
    <script type="text/javascript">

        $(document).ready(function () {
            $('#<%=btn_invia.ClientId%>').attr('disabled', true);
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
            init_js();
        });

        function init_js() {
            Init_Crop_Avatar();
            Init_Select2();
            Init_MultipleSelect2();
            select2_already_init = true; //VARIABILE GLOBALE CHE NON INIZIALIZZA NELLA MASTER LA SELECT2
            $('#ddl_video_tag').select2('val', selectedItems);
        }

        function endRequestHandler(sender, args) {
            init_js();
        }

        function caricaVideo() {
            alert("Esegui l'upload del video");
        }

        function Init_Crop_Avatar() {

            $('#image-avatar').cropit({ imageBackground: false, initialZoom: 'min' });
            /*$('#image-public').cropit(
            {
                imageBackground: false,
                initialZoom: 'min',
                onImageLoaded: function () {
                    //var cw = $('#cropit-public').width();
                    //alert(cw);
                    //$('#cropit-public').css({'height':cw/2 + 'px'});
                    resizeHandler();
                }
            });*/

            $('#rotate-cw-avatar').click(function () {
                $('#image-avatar').cropit('rotateCW');
                return false;
            });
            $('#rotate-ccw-avatar').click(function () {
                $('#image-avatar').cropit('rotateCCW');
                return false;
            });

        }

        function openCrop() {
            $('.crop_avatar').modal('show');
            $('#cropit-image-input').click();
        }

        function exportCrop() {
            var imageData = $('#image-avatar').cropit('export');
            //window.open(imageData);
            PageMethods.SetImmagineVideo(imageData,
                function () {
                    javascript: __doPostBack('<%=btn_salva_immagini_hidden.UniqueID%>', '');
                },
                function (error) {
                    alert("Errore non gestito: " + error);
                });
        }

        function resizeHandler() {
            /**
            * Adjust the size of the preview area to be 100% of the image cropper container
            */
            if ($('#image-public')) {
                var finalWidth = 800, // The desired width for final image output
                    finalHeight = 400, // The desired height for final image output
                    sizeRatio = finalHeight / finalWidth,
                    newWidth = $('#image-public').width(),
                    newHeight = newWidth * sizeRatio,
                    newZoom = finalWidth / newWidth;
                $('#image-public').cropit('previewSize', { width: newWidth, height: newHeight });
                $('#image-public').cropit('exportZoom', newZoom);
                //alert(newWidth);
            }
        }


    </script>
    </telerik:RadCodeBlock> 
</asp:Content>
