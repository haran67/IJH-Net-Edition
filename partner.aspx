<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Partner.aspx.vb" Inherits="JazzHub_Web.Partner" %>
<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark patch-wallpaper" data-height-lg="250" data-height-md="200" data-height-sm="200" data-height-xs="200" data-height-xxs="150">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1><%=Lingua.CaricaLingua("lgl_partners_title")%></h1>
            <h3><%=Lingua.CaricaLingua("lgl_partners_desc")%></h3>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap">
        <div class="container clearfix">
            <div class="col_full">
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.bluesinvilla.com/"><i class="icon-line-link"></i> FVG Festival</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.milleunanota.com/"><i class="icon-line-link"></i> Modern Jazz Institute</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.abno.com/"><i class="icon-line-link"></i> Blue Note Orchestra</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.blueartmanagement.com/"><i class="icon-line-link"></i> Blueart</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.peperoncinojazzfestival.com/index.php?page=staff"><i class="icon-line-link"></i> Peperoncino Jazz Festival</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.associazionenotabene.org/"><i class="icon-line-link"></i> Notabene</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.onyxjazzclub.it/2013/"><i class="icon-line-link"></i> Gezziamoci</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://italiajazz.it/organizzazioni/act-ronciglione/13"><i class="icon-line-link"></i> Tuscia in Jazz</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.agenziaeventibipede.it/"><i class="icon-line-link"></i> San Valentino Jazz Festival</a>
                </h3>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
