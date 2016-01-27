<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Crowdfunding.aspx.vb" Inherits="JazzHub_Web.crowdfunding" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax full-screen dark error404-wrap bokeh">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1>Streaming</h1>
            <h3>Ciascun utente con profilo Expo potr&agrave; organizzare eventi in diretta streaming (concerti, prove, lezioni di musica, etc) promossi in esclusiva per gli utenti di Jazz Hub connessi da tutto il mondo: significher&agrave; produrre, vivere e condividere esperienze uniche e irripetibili.</h3>
            <div class="divider divider-rounded divider-center" style="margin: 10px 0;">
                <i class="icon-arrow-down2" style="color: #fff;"></i>
            </div>
            <h2>Pagina in costruzione</h2>
            <div class="heading-block nobottomborder">
                <a href="register.aspx" class="button button-rounded button-red button-xlarge nobottommargin" id="div_registrati_01" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>

