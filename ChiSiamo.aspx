<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="ChiSiamo.aspx.vb" Inherits="JazzHub_Web.ChiSiamo" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark" style="background: url('images/custom/sfondo.jpg'); background-size: cover; background-position: center center" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
        <div class="container clearfix">
            <div class="vertical-middle center">

                <div class="heading-block nobottomborder center">
                    <h1>
                        <div class="text-rotater shadow text-shadow" data-separator="|" data-rotate="flipInX" data-speed="3500" style="color: #ccc">
                            <%=Lingua.CaricaLingua("lgl_chisiamo_title_01")%>
                            <br />
                            <span class="t-rotate" style="color: #fff">
                            <%=Lingua.CaricaLingua("lgl_chisiamo_title_02")%>
                            </span>
                        </div>
                    </h1>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
<div class="content-wrap  nopadding">
    <div class="row common-height clearfix">

        <div class="col-sm-5 col-padding dark" style="background: url('images/custom/jazz-bg-1.jpg') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
            <div class="heading-block nobottomborder tright text-shadow">
                <h2><%=Lingua.CaricaLingua("lgl_chisiamo_chisiamo")%></h2>
            </div>
        </div>

        <div class="col-sm-7 col-padding">

            <div class="row clearfix">

                <h3 style="font-weight: normal">
                    <%=Lingua.CaricaLingua("lgl_chisiamo_descrizione_01")%>
                </h3>
                <h3 style="font-weight: normal">
                    <%=Lingua.CaricaLingua("lgl_chisiamo_descrizione_02")%>
                </h3>
            </div>

        </div>

    </div>
    <div class="section nomargin dark center parallax"  style="background: url('images/custom/sfondo.jpg'); background-size: cover; background-position: center center" data-stellar-background-ratio="0.3">
        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"><i class="icon-user2"></i>
            <%=Lingua.CaricaLingua("lgl_index_registrati")%>
        </a>
    </div>
    <div class="row common-height clearfix">

        <div class="col-sm-5 col-padding dark fright" style="background: url('images/custom/jazz-bg-2.jpg') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
            <div class="heading-block nobottomborder tleft text-shadow">
                <h2><%=Lingua.CaricaLingua("lgl_chisiamo_opportunita")%></h2>
            </div>
        </div>
        <div class="col-sm-7 col-padding fleft">

            <div class="row clearfix tright">

                <div class="col_full">
                    <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_01")%>
                    <h3>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_01")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_02")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_03")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_04")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_05")%><br>
                        - <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_list_06")%>
                    </h3>
                    <%=Lingua.CaricaLingua("lgl_chisiamo_opportunita_descrizione_02")%>
                </div>

            </div>

        </div>

    </div>
    <div class="section nomargin dark center parallax"  style="background: url('images/custom/sfondo.jpg'); background-size: cover; background-position: center center" data-stellar-background-ratio="0.3">
        <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
    </div>
    <div class="row common-height clearfix">

        <div class="col-sm-5 col-padding dark" style="background: url('images/custom/jazz-bg-3.jpg') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
            <div class="heading-block nobottomborder tright text-shadow">
                <h2><%=Lingua.CaricaLingua("lgl_chisiamo_partecipare")%></h2>
            </div>
        </div>

        <div class="col-sm-7 col-padding">

            <div class="row clearfix">
                <%=Lingua.CaricaLingua("lgl_chisiamo_partecipare_desc_01")%>
                <%=Lingua.CaricaLingua("lgl_chisiamo_partecipare_desc_02")%>
                <%=Lingua.CaricaLingua("lgl_chisiamo_partecipare_desc_03")%>
            </div>

        </div>

    </div>
    <div class="section nomargin dark center parallax"  style="background: url('images/custom/sfondo.jpg'); background-size: cover; background-position: center center" data-stellar-background-ratio="0.3">
        <div class="container">
            <div class="heading-block nobottomborder center">
                <h1><%=Lingua.CaricaLingua("lgl_chisiamo_tariffe")%></h1>
            </div>
            <div class="divider divider-short divider-rounded divider-center"><i class="icon-chevron-down"></i></div>
            <div class="pricing bottommargin clearfix">

                <div class="col-sm-6">

                    <div class="pricing-box">
                        <div class="pricing-title">
                            <h3><%=Lingua.CaricaLingua("lgl_chisiamo_visitatore")%></h3>
                            <span><%=Lingua.CaricaLingua("lgl_chisiamo_iscrizione_valida")%></span>
                        </div>
                        <div class="pricing-price">
                            <span class="price-unit">&euro;</span>9,99<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                        </div>
                        <div class="pricing-features">
                            <ul>
                                <li><%=Lingua.CaricaLingua("lgl_chisiamo_visitatore_desc")%></li>
                            </ul>
                        </div>
                        <div class="pricing-action">
                            <a href="register.aspx" class="button button-rounded btn-block button-red button-xlarge nomargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
                        </div>
                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="pricing-box">
                        <div class="pricing-title">
                            <h3><%=Lingua.CaricaLingua("lgl_chisiamo_espositore")%></h3>
                            <span><%=Lingua.CaricaLingua("lgl_chisiamo_iscrizione_valida")%></span>
                        </div>
                        <div class="col-sm-4 notopmargin">
                            <div class="pricing-price">
                                <span class="price-unit">&euro;</span>12<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                            </div>
                            <div class="pricing-features">
                                <ul>
                                    <li><%=Lingua.CaricaLingua("lgl_chisiamo_espositore_desc_01")%></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4 notopmargin">
                            <div class="pricing-price">
                                <span class="price-unit">&euro;</span>24<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                            </div>
                            <div class="pricing-features">
                                <ul>
                                    <li><%=Lingua.CaricaLingua("lgl_chisiamo_espositore_desc_02")%></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4 notopmargin">
                            <div class="pricing-price">
                                <span class="price-unit">&euro;</span>50<span class="price-tenure">/<%=Lingua.CaricaLingua("lgl_chisiamo_anno")%></span>
                            </div>
                            <div class="pricing-features">
                                <ul>
                                    <li><%=Lingua.CaricaLingua("lgl_chisiamo_espositore_desc_03")%></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="pricing-action">
                            <a href="register.aspx" class="button button-rounded btn-block button-red button-xlarge nomargin"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
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
