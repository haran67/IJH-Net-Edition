<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Radio.aspx.vb" Inherits="JazzHub_Web.Radio" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark patch-wallpaper" data-height-lg="250" data-height-md="200" data-height-sm="200" data-height-xs="200" data-height-xxs="150">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1><%=Lingua.CaricaLingua("lgl_radio_title")%></h1>
            <h3><%=Lingua.CaricaLingua("lgl_radio_desc")%></h3>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap">
        <div class="container clearfix">
            <div class="col_full ">
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="https://open.spotify.com/user/mejoresplaylistsspotify/playlist/05Hd48jdQIz3s8WRrvGnzf"><i class="icon-youtube-play"></i> Spotify</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="http://www.deezer.com/playlist/1551552041"><i class="icon-line-link"></i> Deezer</a>
                </h3>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
