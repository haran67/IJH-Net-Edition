<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Tv.aspx.vb" Inherits="JazzHub_Web.Tv" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark patch-wallpaper" data-height-lg="350" data-height-md="350" data-height-sm="400" data-height-xs="400" data-height-xxs="400">
        <div class="container vertical-middle center clearfix text-uppercase">
            <div class="heading-block nobottomborder text-shadow">
                <h1>
                    <%=Lingua.CaricaLingua("lgl_tv_jazz_hub")%>
                </h1>
                <h3><%=Lingua.CaricaLingua("lgl_tv_jazz_accoglie")%></h3>
                <h4><%=Lingua.CaricaLingua("lgl_tv_jazz_canone")%></h4>
                <div class="divider divider-rounded divider-center" style="margin: 10px 0;">
                    <i class="icon-arrow-down2" style="color: #fff;"></i>
                </div>
                <a href="/Contatti.aspx" class="button button-green button-large button-rounded"><%=Lingua.CaricaLingua("lgl_tv_contattaci")%></a> 
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap  nopadding">
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: url('images/custom/jazz-bg-1.jpg') center center no-repeat; background-size: cover;">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2><%=Lingua.CaricaLingua("lgl_tv_artisti")%></h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://www.youtube.com/user/neilcowleytrio "><i class="icon-line-link"></i> Neil Cowley Trio</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://www.youtube.com/user/PatMethenyMedia/featured"><i class="icon-line-link"></i> Pat Metheny</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://www.youtube.com/user/GregoryPorterVEVO"><i class="icon-line-link"></i> Gregory Porter</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button hidden button-rounded button-red button-xlarge nobottommargin" id="div_registrati_00" runat="server"><i class="icon-user2"></i>
                <%=Lingua.CaricaLingua("lgl_index_registrati")%>
            </a>
        </div>
        <div class="row common-height alt clearfix">
            <div class="col-sm-5 col-padding dark" style="background: url('images/custom/festival-bg.jpg') center center no-repeat; background-size: cover;">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2><%=Lingua.CaricaLingua("lgl_tv_festival")%></h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <div class="col_full">
                        <h3 class="nomargin" style="font-weight: normal">
                            <a href="https://www.youtube.com/user/romajazzfestival" target="_blank"><i class="icon-line-link"></i> Roma Jazz Festival</a>
                        </h3>
                        <div class="divider divider-left nomargin" style="height: 20px;"></div>
                        <h3 class="nomargin" style="font-weight: normal">
                            <a href="https://www.youtube.com/user/JavaJazzFest" target="_blank"><i class="icon-line-link"></i> Java Jazz Fest</a>
                        </h3>
                        <div class="divider divider-left nomargin" style="height: 20px;"></div>
                        <h3 class="nomargin" style="font-weight: normal">
                            <a href="https://www.youtube.com/user/montjazzfest" target="_blank"><i class="icon-line-link"></i> Festival International de Jazz de Montr&eacute;al</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button hidden button-rounded button-red button-xlarge nobottommargin" id="div_registrati_01" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
        </div>
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: url('images/custom/jazz-bg-3.jpg') center center no-repeat; background-size: cover;">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2><%=Lingua.CaricaLingua("lgl_tv_club")%></h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://www.youtube.com/user/SmokeJazzClubNYC" target="_blank"><i class="icon-line-link"></i> Smoke Jazz Club</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://www.youtube.com/channel/UC_yewZMOD1jdqH4sI-UXBAxQ" target="_blank"><i class="icon-line-link"></i> The Standard Jazz Club</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button  button-rounded button-red button-xlarge nobottommargin" id="div_registrati_02" runat="server"><i class="icon-user2"></i>
                <%=Lingua.CaricaLingua("lgl_index_registrati")%>
            </a>
        </div>
        <div class="row common-height alt clearfix">
            <div class="col-sm-5 col-padding dark " style="background: url('images/custom/jazz-bg-2.jpg') center center no-repeat; background-size: cover;">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2><%=Lingua.CaricaLingua("lgl_tv_label")%></h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding ">
                <div class="row clearfix">
                    <div class="col_full">
                        <h3 class="nomargin" style="font-weight: normal">
                            <a href="https://www.youtube.com/user/ACTMusicOfficial" target="_blank"><i class="icon-line-link"></i> ACT</a>
                        </h3>
                        <div class="line" style="margin: 20px; 0"></div>
                        <h3 class="nomargin" style="font-weight: normal">
                            <a href="https://www.youtube.com/channel/UCKWKlIjdJM69UL97D-5Yb0g" target="_blank"><i class="icon-line-link"></i> JazzIt</a>
                        </h3>
                        <div class="line" style="margin: 20px; 0"></div>
                        <h3 class="nomargin" style="font-weight: normal">
                            <a href="https://www.youtube.com/user/BerkleeCollege" target="_blank"><i class="icon-line-link"></i> Berklee College Of Music</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
