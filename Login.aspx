<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Login.aspx.vb" Inherits="JazzHub_Web.fLogin" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-wrap">
        <div class="section nomargin center parallax bokeh" data-stellar-background-ratio="0.3">
            <div class="container clearfix" style="padding-top: 50px; padding-bottom:30px">
                <div class="col_two_fifth nobottommargin">
                    <div class="panel panel-default divcenter  "style="max-width: 400px; background-color: rgba(255,255,255,0.93);">
                        <asp:UpdatePanel ID="upd_login" runat="server">
                            <ContentTemplate>
                                <div class="panel-body" style="padding: 40px;">
                                    <div id="processTabs">
                                        <ul class="hidden">
                                            <li><a href="#tab-register"></a></li>
                                            <li><a href="#tab-password"></a></li>
                                        </ul>
                                        <div class="tab-content clearfix" id="tab-register">
                                            <div id="div_login" runat="server">
                                                <div id="login-form" name="login-form" class="nobottommargin center">
                                                    <h3 class="nopadding nomargin">
                                                        <%=Lingua.CaricaLingua("lgl_index_accedi_profilo")%></h3>
                                                    <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                                        <i class="icon-arrow-down2"></i>
                                                    </div>
                                                    <div class="alert alert-danger display-hide display-hide" id="div_message" runat="server">
                                                        <i class="icon-warning-sign"></i>
                                                        <asp:Literal ID="ltl_message_error" runat="server"></asp:Literal>
                                                    </div>
                                                    <div class="col_full">
                                                        <label for="login-form-username">
                                                            <%=Lingua.CaricaLingua("lgl_index_username")%></label>
                                                        <div class="form-group" id="div_username" runat="server">
                                                            <asp:TextBox ID="username" name="username" runat="server" autocomplete="off" CssClass="not-dark form-control placeholder-no-fix"></asp:TextBox>
                                                            <span for="username" style="font-size: 15px; color: Red;" id="span_username" runat="server"
                                                                visible="false">
                                                                <asp:Literal ID="ltl_msg_username" runat="server"></asp:Literal></span>
                                                        </div>
                                                    </div>
                                                    <div class="col_full">
                                                        <label for="login-form-password">
                                                            <%=Lingua.CaricaLingua("lgl_index_password")%></label>
                                                        <div class="form-group" id="div_password" runat="server">
                                                            <asp:TextBox ID="password" name="password" autocomplete="off" runat="server" CssClass="not-dark form-control placeholder-no-fix"
                                                                TextMode="Password"></asp:TextBox>
                                                            <span for="password" style="font-size: 15px; color: Red;" id="span_password" runat="server"
                                                                visible="false">
                                                                <asp:Literal ID="ltl_msg_password" runat="server"></asp:Literal></span>
                                                        </div>
                                                    </div>
                                                    <div class="col_full">
                                                        <asp:LinkButton ID="btnAccedi" runat="server" CssClass="button button-rounded button-background nomargin">
                                                            <%=Lingua.CaricaLingua("lgl_index_accedi")%>
                                                        </asp:LinkButton>
                                                    </div>
                                                    <div class="col_full nobottommargin">
                                                        <a href="#" class="tab-linker" rel="1">
                                                            <%=Lingua.CaricaLingua("lgl_index_password_dimenticata")%></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="div_logged" runat="server" visible="false">
                                                <div id="login-form" name="login-form" class="nobottommargin center">
                                                    <h3 class="nopadding nomargin">
                                                        <%=Lingua.CaricaLingua("lgl_index_benvenuto_div")%></h3>
                                                    <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                                        <i class="icon-arrow-down2"></i>
                                                    </div>
                                                    <div class="">
                                                        <span style="font-size: 15px;">
                                                            <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                                                        </span>
                                                    </div>
                                                    <br />
                                                    <div class="col_full">
                                                        <asp:LinkButton ID="btn_profilo" runat="server" CssClass="button button-rounded button-background nomargin">
                                                            <%=Lingua.CaricaLingua("lgl_index_vai_profilo")%>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="btn_esci" runat="server" CssClass="button button-rounded button-background nomargin">
                                                            <%=Lingua.CaricaLingua("lgl_index_esci")%>
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-content clearfix" id="tab-password">
                                            <div id="request_psw" name="request_psw" class="nobottommargin center">
                                                <h3 class="nopadding nomargin">
                                                    <%=Lingua.CaricaLingua("lgl_index_richiedi_password")%></h3>
                                                <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                                    <i class="icon-arrow-down2"></i>
                                                </div>
                                                <div class="alert alert-success display-hide" id="div_message_success" runat="server">
                                                    <i class="icon-thumbs-up"></i>
                                                    <asp:Literal ID="ltl_message_success" runat="server"></asp:Literal>
                                                </div>
                                                <div class="col_full">
                                                    <label for="login-form-username">
                                                        <%=Lingua.CaricaLingua("lgl_index_mail")%></label>
                                                    <div class="form-group" id="div_e_mail_lost" runat="server">
                                                        <asp:TextBox ID="txt_e_mail_lost" name="txt_e_mail_lost" runat="server" autocomplete="off"
                                                            CssClass="not-dark form-control placeholder-no-fix"></asp:TextBox>
                                                        <span for="txt_e_mail_lost" style="font-size: 15px; color: Red;" id="span_e_mail_lost"
                                                            runat="server" visible="false">
                                                            <asp:Literal ID="ltl_msg_e_mail_lost" runat="server"></asp:Literal></span>
                                                    </div>
                                                </div>
                                                <div class="col_full">
                                                    <asp:LinkButton ID="btnInviaPassword" runat="server" CssClass="button button-rounded button-background nomargin">
                                                        <%=Lingua.CaricaLingua("lgl_index_invia_password")%>
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="col_full nobottommargin">
                                                    <a href="#" class="tab-linker" rel="0">
                                                        <%=Lingua.CaricaLingua("lgl_index_accedi_izh")%></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="col_three_fifth col_last dark center">
                    <div style="padding: 40px 0 0 0">
                        <h1 class="nomargin nopadding">
                            Non hai ancora un'account?
                        </h1>
                        <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                            <i class="icon-arrow-down2"></i>
                        </div>
                        <div id="div_registrati" runat="server">
                            <a href="register.aspx" class="button button-rounded button-3d button-red button-xlarge nobottommargin"><i class="icon-user2"></i><span><%=Lingua.CaricaLingua("lgl_index_registrati")%></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
        var my_tab = 0;

        $(document).ready(function () {

            Init_Tab();

            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

        });

        function endRequestHandler(sender, args) {
            Init_Tab();
            setTab(my_tab);
        }

        function Init_Tab() {
            $("#processTabs").tabs({
                show: {
                    effect: "fade",
                    duration: 400
                }
            });

            $(".tab-linker").click(function () {
                //alert($(this).attr('rel'));
                setTab($(this).attr('rel'));
                return false;
            });

        }

        function setTab(tab) {
            my_tab = tab;
            $("#processTabs").tabs("option", "active", tab);
        }
    </script>
</asp:Content>
