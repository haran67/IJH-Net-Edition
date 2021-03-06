<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Contatti.aspx.vb" Inherits="JazzHub_Web.Contatti" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<%@ Register TagPrefix="cc1" Namespace="WebControlCaptcha" Assembly="WebControlCaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-wrap">
        <div class="section nomargin alt center">
            <div class="container clearfix" style="padding-top: 50px; padding-bottom:30px">
                <div class="col_two_third">
                    <div id="contact-form" name="register-form" class="nobottommargin">
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
                        <div class="panel panel-default nobottommargin">
                            <div class="panel-body" style="padding: 40px;">
                                <h3 class="nopadding nomargin center"><%=Lingua.CaricaLingua("lgl_contattaci_contattaci")%></h3>
                                <div class="divider divider-rounded divider-center nomargin" style="margin: 10px 0!important">
                                    <i class="icon-arrow-down2"></i>
                                </div>
                                <div class="col_half">
                                    <label for="register-form-name">
                                        <%=Lingua.CaricaLingua("lgl_contattaci_nome")%></label>
                                    <asp:TextBox ID="txt_nome" runat="server" MaxLength="64" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col_half col_last">
                                    <label for="register-form-email">
                                        <%=Lingua.CaricaLingua("lgl_contattaci_email")%></label>
                                    <asp:TextBox ID="txt_email" runat="server" MaxLength="64" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col_full">
                                    <label for="register-form-password">
                                        <%=Lingua.CaricaLingua("lgl_contattaci_oggetto")%></label>
                                    <asp:TextBox ID="txt_oggetto" runat="server" MaxLength="64" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col_full">
                                    <label for="register-form-repassword">
                                        <%=Lingua.CaricaLingua("lgl_contattaci_messaggio")%></label>
                                    <asp:TextBox ID="txt_messaggio" runat="server" MaxLength="64" TextMode="MultiLine" Rows="6" 
                                        CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col_full">
                                    <cc1:CaptchaControl ID="CaptchaControl1" runat="server" CaptchaWidth="150" Height="100"></cc1:CaptchaControl>
                                </div>
                                <div class="col_full nobottommargin center">
                                    <asp:LinkButton ID="btn_invia" runat="server" CssClass="button button-rounded nomargin" >
                                        <%=Lingua.CaricaLingua("lgl_contattaci_invia")%> <i class="icon-arrow-right2"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col_one_third col_last ">
                    <div class="widget clearfix">
                        <img src="images/logo.png" alt="" >
                        <h3 class="nomargin" style="font-weight: 400; letter-spacing: 0;">IMF Foundation</h3>
                        <h5 style="font-weight: 400; letter-spacing: 0;">International Music Festival Foundation</h5>
                        <address>
                            <strong>Sede operativa:</strong><br>
                            Via Giuseppe Sacconi, 19 - Lotto G<br>
                            00196 roma<br>
                        </address>
                        <div class="panel" style="padding: 10px; background-color: rgba(255,255,255,.75)">
                            <h5 class="nomargin">
                                <i class="icon-envelope2"></i> italianjazzhub@gmail.com<br>
                                <i class="icon-headphones"></i> +39 06 90207045
                            </h5>
                        </div>
<!--
                        <div >
                            <a href="#" class="social-icon si-small si-borderless si-facebook">
                                <i class="icon-facebook">
                            </i><i class="icon-facebook"></i>
                            </a>
                            <a href="#" class="social-icon si-small si-borderless si-twitter">
                                <i class="icon-twitter"></i><i class="icon-twitter"></i>
                            </a>
                            <a href="#" class="social-icon si-small si-borderless si-gplus">
                                    <i class="icon-gplus"></i><i class="icon-gplus"></i></a><a href="#" class="social-icon si-small si-borderless si-pinterest">
                                        <i class="icon-pinterest"></i><i class="icon-pinterest"></i></a><a href="#" class="social-icon si-small si-borderless si-vimeo">
                                            <i class="icon-vimeo"></i><i class="icon-vimeo"></i></a><a href="#" class="social-icon si-small si-borderless si-github">
                                                <i class="icon-github"></i><i class="icon-github"></i></a><a href="#" class="social-icon si-small si-borderless si-yahoo">
                                                    <i class="icon-yahoo"></i><i class="icon-yahoo"></i></a>
                            <a href="#" class="social-icon si-small si-borderless si-linkedin"><i class="icon-linkedin">
                            </i><i class="icon-linkedin"></i></a>
                        </div>
-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
