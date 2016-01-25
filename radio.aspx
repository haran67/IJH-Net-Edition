<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Radio.aspx.vb" Inherits="JazzHub_Web.Radio" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="slider" class="slider-parallax full-screen dark error404-wrap"  style="background: url('images/custom/sfondo.jpg'); background-size: cover; background-position: center center" <!--data-height-lg="500" data-height-md="450" data-height-sm="350" data-height-xs="250" data-height-xxs="200"-->>

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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
