<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Streaming.aspx.vb" Inherits="JazzHub_Web.Streaming" %>
<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap home nopadding">
        <div class="section alt nomargin  center">
            <div class="container clearfix">
                <h2 class="color">Streaming</h2>
                <h4>Ciascun utente con profilo Expo potr&agrave; organizzare eventi in diretta streaming (concerti, prove, lezioni di musica, etc) promossi in esclusiva per gli utenti di Jazz Hub connessi da tutto il mondo: significher&agrave; produrre, vivere e condividere esperienze uniche e irripetibili.</h4>
                <div class="section-cover streaming divcenter hidden nomargin"></div>
                <iframe width="450" height="350" src="https://www.streamera.tv/channel/57908/default/iframe/" frameborder="0" allowfullscreen></iframe>
            </div>
        </div>
        <div class="section alt nomargin center hidden">
            <div class="container clearfix">
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>