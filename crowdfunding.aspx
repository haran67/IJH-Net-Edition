<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Crowdfunding.aspx.vb" Inherits="JazzHub_Web.crowdfunding" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap home nopadding">
        <div class="section nomargin  center">
            <div class="container clearfix">
                <h2 class="color"><%=Lingua.CaricaLingua("lgl_crowfunding_title")%></h2>
                <h4><%=Lingua.CaricaLingua("lgl_crowfunding_desc")%></h4>
                    <div class="section-cover crowfunding divcenter"></div>
                <h4 class="nomargin">
                    <a href="https://www.musicraiser.com/it/how_it_works">Music Raiser</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.kickstarter.com/?ref=nav">Kickstarter</a>
                </h4>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>

