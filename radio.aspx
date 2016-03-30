<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Radio.aspx.vb" Inherits="JazzHub_Web.Radio" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap home nopadding">
        <div class="section nomargin alt center">
            <div class="container clearfix">
                <h2 class="color"><%=Lingua.CaricaLingua("lgl_radio_title")%></h2>
                <h4><%=Lingua.CaricaLingua("lgl_radio_desc")%></h4>
                <div class="section-cover onair divcenter"></div>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="http://www.deezer.com/playlist/1551552041">Deezer</a>
                </h4>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
