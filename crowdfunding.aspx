<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Crowdfunding.aspx.vb" Inherits="JazzHub_Web.crowdfunding" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax dark patch-wallpaper" data-height-lg="300" data-height-md="300" data-height-sm="300" data-height-xs="300" data-height-xxs="300">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1><%=Lingua.CaricaLingua("lgl_crowfunding_title")%></h1>
            <h3><%=Lingua.CaricaLingua("lgl_crowfunding_desc")%></h3>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap ">
        <div class="container clearfix">
            <div class="col_full ">
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="https://www.musicraiser.com/it/how_it_works"><i class="icon-line-link"></i> Music Raiser</a>
                </h3>
                <div class="line" style="margin: 20px; 0"></div>
                <h3 class="nomargin" style="font-weight: normal">
                    <a href="https://www.kickstarter.com/?ref=nav"><i class="icon-line-link"></i> Kickstarter</a>
                </h3>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>

