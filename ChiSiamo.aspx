<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="ChiSiamo.aspx.vb" Inherits="JazzHub_Web.ChiSiamo" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap home nopadding">
        <div class="section nomargin alt center">
            <div class="container clearfix">
                <h2 class="color "><%=Lingua.CaricaLingua("lgl_chisiamo_title_01")%></h2>
                <div class="text-rotater" data-separator="|" data-rotate="flipInX" data-speed="3500">
                    <h4 class="t-rotate color nomargin">
                        <%=Lingua.CaricaLingua("lgl_chisiamo_title_02")%>
                    </h4>
                </div>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_chisiamo_chisiamo")%></h3>
                <div class="chisiamo divcenter" style="margin-bottom: 20px;width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <div class="citazione">
                    <h4>
                        <%=Lingua.CaricaLingua("lgl_chisiamo_descrizione_01")%>
                    </h4>
                    <h4>
                        <%=Lingua.CaricaLingua("lgl_chisiamo_descrizione_02")%>
                    </h4>
                </div>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_chisiamo_opportunita")%></h3>
                <div class="opportunita divcenter" style="margin-bottom: 20px; width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <div class="citazione">
                    <h4>
                        <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_01")%>
                    </h4>
                    <h4>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_01")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_02")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_03")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_04")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_05")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_06")%>
                    </h4>
                    <h4>
                        <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_02")%>
                    </h4>
                </div>
            </div>
        </div>

        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_chisiamo_partecipare")%></h3>
                <div class="partecipare divcenter" style="margin-bottom: 20px; width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <h4>
                    <%=Lingua.CaricaLingua("lgl_chisiamo_partecipare_desc_01")%>
                </h4>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix">
                <h1><%=Lingua.CaricaLingua("lgl_chisiamo_tariffe")%></h1>
                <div class="pricing bottommargin clearfix">
                    <div class="col-sm-6">
                        <div class="pricing-box">
                            <div class="pricing-title">
                                <h3 style="font-weight:400"><i class="icon-facetime-video"></i><br><%=Lingua.CaricaLingua("lgl_chisiamo_visitatore")%></h3>
                                <span><%=Lingua.CaricaLingua("lgl_chisiamo_iscrizione_valida")%></span>
                            </div>
                            <div class="pricing-price">
                                <span class="price-unit">&euro;</span>9,99<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                            </div>
                            <div class="pricing-features">
                                <ul>
                                    <li>
                                        <%=Lingua.CaricaLingua("lgl_chisiamo_visitatore_desc")%>
                                    </li>
                                </ul>
                            </div>
                            <div class="pricing-action">
                                <a href="register.aspx" class="button button-rounded button-primary btn-block nomargin" id="div_registrati_02" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="pricing-box">
                            <div class="pricing-title">
                                <h3 style="font-weight:400"><i class="icon-eye-open"></i><br><%=Lingua.CaricaLingua("lgl_chisiamo_espositore")%></h3>
                                <span><%=Lingua.CaricaLingua("lgl_chisiamo_iscrizione_valida")%></span>
                            </div>
                            <div class="col-sm-4 notopmargin">
                                <div class="pricing-price">
                                    <span class="price-unit">&euro;</span>12<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                                </div>
                                <div class="pricing-features">
                                    <ul>
                                        <li>
                                            <%=Lingua.CaricaLingua("lgl_chisiamo_espositore_desc_01")%>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 notopmargin">
                                <div class="pricing-price">
                                    <span class="price-unit">&euro;</span>24<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                                </div>
                                <div class="pricing-features">
                                    <ul>
                                        <li>
                                            <%=Lingua.CaricaLingua("lgl_chisiamo_espositore_desc_02")%>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 notopmargin">
                                <div class="pricing-price">
                                    <span class="price-unit">&euro;</span>50<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                                </div>
                                <div class="pricing-features">
                                    <ul>
                                        <li>
                                            <%=Lingua.CaricaLingua("lgl_chisiamo_espositore_desc_03")%>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="pricing-action">
                                <a href="register.aspx" class="button button-rounded button-primary btn-block nomargin" id="div_registrati_03" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                            
    <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin" id="div_registrati_00" runat="server">
            <i class="icon-user2"></i>
            <%=Lingua.CaricaLingua("lgl_index_registrati")%>
        </a>
    </div>
    <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"  id="div_registrati_01" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>