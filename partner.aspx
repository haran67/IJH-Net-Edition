<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Partner.aspx.vb" Inherits="JazzHub_Web.Partner" %>
<%@ Import Namespace="JazzHub_Servizi.Lingua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax full-screen dark error404-wrap bokeh">
        <div class="container vertical-middle center clearfix text-uppercase text-shadow">
            <h1><%=Lingua.CaricaLingua("lgl_partners_title")%></h1>
            <h3><%=Lingua.CaricaLingua("lgl_partners_desc")%></h3>
            <div class="divider divider-rounded divider-center" style="margin: 10px 0;">
                <i class="icon-arrow-down2" style="color: #fff;"></i>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
