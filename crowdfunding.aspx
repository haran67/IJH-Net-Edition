<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Crowdfunding.aspx.vb" Inherits="JazzHub_Web.crowdfunding" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark bokeh" data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1><%=Lingua.CaricaLingua("lgl_crowfunding_title")%></h1>
            <h3><%=Lingua.CaricaLingua("lgl_crowfunding_desc")%></h3>
            <div class="divider divider-rounded divider-center" style="margin: 10px 0;">
                <i class="icon-arrow-down2" style="color: #fff;"></i>
            </div>
            
            <div class="heading-block nobottomborder">
                <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin" id="div_registrati_01" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap ">
        <div class="container clearfix">
            <div class="col_full center">
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="https://www.musicraiser.com/it/how_it_works"><i class="icon-youtube-play"></i> Music Raiser</a>
                </h3>
                <div class="divider " style="height: 20px;"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="https://www.kickstarter.com/?ref=nav"><i class="icon-youtube-play"></i> Kickstarter</a>
                </h3>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>

