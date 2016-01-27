<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Radio.aspx.vb" Inherits="JazzHub_Web.Radio" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark bokeh" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1><%=Lingua.CaricaLingua("lgl_radio_title")%></h1>
            <h3><%=Lingua.CaricaLingua("lgl_radio_desc")%></h3>
            <div class="heading-block nobottomborder">
                <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin" id="div_registrati_01" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap  nopadding">
        
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: url('images/custom/') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2>Link</h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://open.spotify.com/user/mejoresplaylistsspotify/playlist/05Hd48jdQIz3s8WRrvGnzf"><i class="icon-youtube-play"></i>Spotify</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="http://www.deezer.com/playlist/1551552041"><i class="icon-youtube-play"></i> Deezer</a>
                    </h3>
                </div>
            </div>
        </div>
    
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
