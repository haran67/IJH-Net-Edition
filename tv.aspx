<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master" CodeBehind="Tv.aspx.vb" Inherits="JazzHub_Web.Tv" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap home nopadding">
        <div class="section nomargin alt center">
            <div class="container clearfix">
                <h2 class="color"><%=Lingua.CaricaLingua("lgl_tv_jazz_hub")%></h2>
                <h4><%=Lingua.CaricaLingua("lgl_tv_jazz_accoglie")%><br><%=Lingua.CaricaLingua("lgl_tv_jazz_canone")%></h4>
                <a href="/Contatti.aspx" class="button nomargin button-border button-large button-rounded"><%=Lingua.CaricaLingua("lgl_tv_contattaci")%></a> 
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_tv_artisti")%></h3>
                <div class="chisiamo divcenter" style="margin-bottom: 20px;width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/neilcowleytrio ">Neil Cowley Trio</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/PatMethenyMedia/featured">Pat Metheny</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/GregoryPorterVEVO">Gregory Porter</a>
                </h4>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_tv_festival")%></h3>
                <div class="chisiamo divcenter" style="background-image: url('images/custom/festival-bg.jpg'); margin-bottom: 20px;width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/romajazzfestival" target="_blank">Roma Jazz Festival</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/JavaJazzFest" target="_blank">Java Jazz Fest</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/montjazzfest" target="_blank">Festival International de Jazz de Montr&eacute;al</a>
                </h4>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_tv_club")%></h3>
                <div class="chisiamo divcenter" style="background-image: url('images/custom/jazz-bg-3.jpg'); margin-bottom: 20px;width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/SmokeJazzClubNYC" target="_blank">Smoke Jazz Club</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/channel/UC_yewZMOD1jdqH4sI-UXBAxQ" target="_blank">The Standard Jazz Club</a>
                </h4>
            </div>
        </div>
        <div class="section nomargin alt center">
            <div class="container clearfix ">
                <h3 class="color"><%=Lingua.CaricaLingua("lgl_tv_label")%></h3>
                <div class="chisiamo divcenter" style="background-image: url('images/custom/jazz-bg-2.jpg'); margin-bottom: 20px;width: 200px; height: 200px; border-radius: 50%; box-shadow: 0 0 0 4px rgba(0,0,0,.2)"></div>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/ACTMusicOfficial" target="_blank">ACT</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/channel/UCKWKlIjdJM69UL97D-5Yb0g" target="_blank">JazzIt</a>
                </h4>
                <span class="dot-divider" style="font-size: 10px; color: rgba(0,0,0,.2)"><i class="icon-circle"></i></span>
                <h4 class="nomargin">
                    <a href="https://www.youtube.com/user/BerkleeCollege" target="_blank">Berklee College Of Music</a>
                </h4>
            </div>
        </div>
        <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button hidden button-rounded button-red button-xlarge nobottommargin" id="div_registrati_00" runat="server"><i class="icon-user2"></i>
                <%=Lingua.CaricaLingua("lgl_index_registrati")%>
            </a>
        </div>
        <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button hidden button-rounded button-red button-xlarge nobottommargin" id="div_registrati_01" runat="server"><i class="icon-user2"></i><%=Lingua.CaricaLingua("lgl_index_registrati")%></a>
        </div>
        <div class="hidden section nomargin dark center parallax patch-wallpaper" data-stellar-background-ratio="0.3">
            <a href="register.aspx" class="button  button-rounded button-red button-xlarge nobottommargin" id="div_registrati_02" runat="server"><i class="icon-user2"></i>
                <%=Lingua.CaricaLingua("lgl_index_registrati")%>
            </a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
