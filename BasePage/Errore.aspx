<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Errore.aspx.vb" Inherits="JazzHub_Web.Errore"
    MasterPageFile="~/Jazz.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-title">
        <div class="container clearfix">
            <h1><i class=" icon-bug"></i> GESTIONE ERRORI</h1>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table width="100%" border="0" style="height: 90%; background-color: White; font-family: Arial;
        font-size: 14px;">
        <tr>
            <td valign="top" align="center" style="height: 99%">
                <table class="table table-bordered">
                    <tr>
                        <td align="left" width="150">
                            <strong>Pagina Errore:</strong>
                        </td>
                        <td width="450" align="left">
                            <asp:Literal ID="ltlPag" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr class="">
                        <td align="left" width="150">
                            <strong>Err.Query:</strong>
                        </td>
                        <td width="450" align="left">
                            <asp:Literal ID="ltlQuery" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="150">
                            <strong>Err.Method:</strong>
                        </td>
                        <td width="450" align="left">
                            <asp:Literal ID="ltlMethod" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="150">
                            <strong>Err.Description:</strong>
                        </td>
                        <td width="450" align="left">
                            <asp:Literal ID="ltlDescr" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="150">
                            <strong>Err.StackTrace:</strong>
                        </td>
                        <td width="450" align="left">
                            <asp:Literal ID="ltlStack" runat="server"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
