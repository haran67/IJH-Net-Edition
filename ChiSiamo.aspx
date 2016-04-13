<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="ChiSiamo.aspx.vb" Inherits="JazzHub_Web.ChiSiamo" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap home nopadding">
        <div class="section nomargin alt center" style="padding: 30px 0">
            <div class="container clearfix">
                <h1 class="color nomargin"><%=Lingua.CaricaLingua("lgl_chisiamo_title_01")%></h1>
                <div class="text-rotater" data-separator="|" data-rotate="flipInX" data-speed="3500">
                    <h2 class="t-rotate color nomargin">
                        <%=Lingua.CaricaLingua("lgl_chisiamo_title_02")%>
                    </h2>
                </div>
            </div>
        </div>
        <div class="section nomargin alt" data-class-lg="tleft" data-class-md="tleft" data-class-sm="tleft" data-class-xs="center" data-class-xxs="center">
            <div class="container clearfix ">
                <div class="col_half">
                    <div class="chisiamo section-cover divcenter" data-class-lg="big" data-class-md="big" data-class-sm="medium" data-class-xs="medium" data-class-xxs=""></div>
                </div>
                <div class="col_half col_last">
                    <h3 class="color"><%=Lingua.CaricaLingua("lgl_chisiamo_chisiamo")%></h3>
                    <div class="citazione nomargin">
                        <h4>
                            <%=Lingua.CaricaLingua("lgl_chisiamo_descrizione_01")%>
                        </h4>
                        <h4>
                            <%=Lingua.CaricaLingua("lgl_chisiamo_descrizione_02")%>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="section nomargin alt" data-class-lg="tleft" data-class-md="tleft" data-class-sm="tleft" data-class-xs="center" data-class-xxs="center">
            <div class="container clearfix ">
                <div class="col_half">
                    <div class="opportunita section-cover big divcenter" data-class-lg="big" data-class-md="big" data-class-sm="medium" data-class-xs="medium" data-class-xxs=""></div>
                </div>
                <div class="col_half col_last">
                    <h3 class="color"><%=Lingua.CaricaLingua("lgl_chisiamo_opportunita")%></h3>
                    <div class="citazione nomargin">
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
        </div>
        <div class="section nomargin alt" data-class-lg="tleft" data-class-md="tleft" data-class-sm="tleft" data-class-xs="center" data-class-xxs="center">
            <div class="container clearfix ">
                <div class="col_half">
                    <div class="partecipare section-cover big divcenter" data-class-lg="big" data-class-md="big" data-class-sm="medium" data-class-xs="medium" data-class-xxs=""></div>
                </div>
                <div class="col_half col_last">
                    <h3 class="color"><%=Lingua.CaricaLingua("lgl_chisiamo_partecipare")%></h3>
                    <div class="citazione nomargin">
                        <h4>
                            <%=Lingua.CaricaLingua("lgl_chisiamo_partecipare_desc_01")%>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix">
                <h1><%=Lingua.CaricaLingua("lgl_chisiamo_tariffe")%></h1>
                <div class="pricing bottommargin clearfix">
                    <div class="col-sm-6">
                        <div class="pricing-box">
                            <div class="pricing-title">
                                <h3 style="font-weight:400"><i class="icon-eye-open"></i><br><%=Lingua.CaricaLingua("lgl_chisiamo_visitatore")%></h3>
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
                                <h3 style="font-weight:400"><i class="icon-facetime-video"></i><br><%=Lingua.CaricaLingua("lgl_chisiamo_espositore")%></h3>
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
        <div class="section nomargin alt center partners-link">
            <div class="container clearfix">
                <h2 class="color"><%=Lingua.CaricaLingua("lgl_partners_title")%></h2>
                <h4><%=Lingua.CaricaLingua("lgl_partners_desc")%></h4>
<!--                <div class="section-cover partner divcenter"></div> -->
                <a href="http://www.bluesinvilla.com/" alt="FVG Festival"><img src="images/custom/partners/fvg.png" title="FVG Festival"></a>
                <a href="http://www.milleunanota.com/" alt="Modern Jazz Institute"><img src="images/custom/partners/mji.png" title="Modern Jazz Institute"></a>
                <a href="http://www.abno.com/" alt="Blue Note Orchestra"><img class="hidden" src="images/custom/partners/bluenoteorchestra.png" title="Blue Note Orchestra">Blue Note Orchestra</a>
                <a href="http://www.blueartmanagement.com/" alt="Blueart"><img src="images/custom/partners/blueart.png" title="Blueart"></a>
                <a href="http://www.peperoncinojazzfestival.com/index.php?page=staff">Peperoncino Jazz Festival</a>
                <a href="http://www.associazionenotabene.org/" alt="Notabene"><img src="images/custom/partners/notabene.png" title="Notabene"></a>
                <a href="http://www.onyxjazzclub.it/2013/" alt="Gezziamoci"><img src="images/custom/partners/gezziamoci.png" title="Gezziamoci"></a>
                <a href="http://italiajazz.it/organizzazioni/act-ronciglione/13" alt="Tuscia in Jazz"><img src="images/custom/partners/tuscia-in-jazz.png" title="Blueart" title="Tuscia in Jazz"></a>
                    <a href="http://www.agenziaeventibipede.it/" alt="San Valentino Jazz Festival"><img src="images/custom/partners/svjf.png" title="Blueart" title="San Valentino Jazz Festival"></a>
                <a href="http://www.jazzit.it" alt="Jazzit Fest"><img src="images/custom/partners/jazzit.png" title="Jazzit Fest"></a>
                <a href="http://www.milkstudios.it/" alt="Milk Studio"><img src="images/custom/partners/milkstudio.png" title="Milk Studio"></a>
                <a href="http://www.musicisti-jazz.it/" alt="Musicisti italiani di Jazz"><img src="images/custom/partners/midj.png" title="Musicisti italiani di Jazz"></a>
                <a href="http://www.casajazz.it/" alt="Casa del Jazz"><img src="images/custom/partners/casadeljazz.png" title="Casa del Jazz"></a>
                <a href="http://italiajazz.it/" alt="Italia Jazz"><img src="images/custom/partners/italiajazz.png" title="Italia Jazz"></a>
                <a href="http://www.i-jazz.it/" alt="Associazione Nazionale di Festival Jazz"><img src="images/custom/partners/i-jazz.png" title="Associazione Nazionale di Festival Jazz"></a>
                <a href="http://www.europejazz.net/" alt="Europe Jazz Network"><img src="images/custom/partners/ejn.png" title="Europe Jazz Network"></a>
                <a href="http://www.sosmusicisti.org" alt="Associazione Nazionale a tutela della musica e dei musicisti"><img src="images/custom/partners/sosmusicisti.png" title="Associazione Nazionale a tutela della musica e dei musicisti"></a>
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