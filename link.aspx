<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Link.aspx.vb" Inherits="JazzHub_Web.fLink" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark patch-wallpaper" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1>Link</h1>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: #333 url('images/custom/') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2>Pooling</h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="http://www.carpooling.it/"><i class="icon-youtube-play"></i> Car Pooling</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin" id="div_registrati_00" runat="server"><i class="icon-user2"></i>
                <%=Lingua.CaricaLingua("lgl_index_registrati")%>
            </a>
        </div>
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: #333  url('images/custom/') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2>Peer to Peer</h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="http://www.emule.com/it/"><i class="icon-youtube-play"></i>Emule</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="https://www.utorrent.com/intl/it/"><i class="icon-youtube-play"></i> uTorrent</a>
                    </h3>
                </div>
            </div>
        </div>
            <div class="section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin" id="div_registrati_01" runat="server"><i class="icon-user2"></i>
                <%=Lingua.CaricaLingua("lgl_index_registrati")%>
            </a>
        </div>
        <div class="row common-height clearfix">
            <div class="col-sm-5 col-padding dark" style="background: #333  url('images/custom/') center center no-repeat; background-size: cover;" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
                <div class="heading-block nobottomborder tright text-shadow">
                    <h2>Sharing</h2>
                </div>
            </div>
            <div class="col-sm-7 col-padding">
                <div class="row clearfix">
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="http://www.jazzit.it"><i class="icon-youtube-play"></i> Jazzit Fest</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="http://www.milkstudios.it/"><i class="icon-youtube-play"></i> Milk Studio</a>
                    </h3>
                    <div class="divider divider-left nomargin" style="height: 20px;"></div>
                    <h3 class="nomargin" style="font-weight: normal">
                        <a href="http://www.musicisti-jazz.it/"><i class="icon-youtube-play"></i> Musicisti italiani di Jazz</a>
                    </h3>
                </div>
            </div>
        </div>
        
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>


