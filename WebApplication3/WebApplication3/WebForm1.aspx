<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="FILTROS:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Unidade:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CNES" DataValueField="CNES" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="Ano/Mes:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="DataCriacao" DataValueField="DataCriacao">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="RESULTADO"></asp:Label>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click"/>
        <br />
        <br />
    </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="CodPaciente" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CNESLabel" runat="server" Text='<%# Eval("CNES") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataCriacaoLabel" runat="server" Text='<%# Eval("DataCriacao") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodPacienteLabel" runat="server" Text='<%# Eval("CodPaciente") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CartaoSUSLabel" runat="server" Text='<%# Eval("CartaoSUS") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeExibicaoLabel" runat="server" Text='<%# Eval("NomeExibicao") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="CNESTextBox" runat="server" Text='<%# Bind("CNES") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataCriacaoTextBox" runat="server" Text='<%# Bind("DataCriacao") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodPacienteLabel1" runat="server" Text='<%# Eval("CodPaciente") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CartaoSUSTextBox" runat="server" Text='<%# Bind("CartaoSUS") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeExibicaoTextBox" runat="server" Text='<%# Bind("NomeExibicao") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="CNESTextBox" runat="server" Text='<%# Bind("CNES") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataCriacaoTextBox" runat="server" Text='<%# Bind("DataCriacao") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="CartaoSUSTextBox" runat="server" Text='<%# Bind("CartaoSUS") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeExibicaoTextBox" runat="server" Text='<%# Bind("NomeExibicao") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CNESLabel" runat="server" Text='<%# Eval("CNES") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataCriacaoLabel" runat="server" Text='<%# Eval("DataCriacao") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodPacienteLabel" runat="server" Text='<%# Eval("CodPaciente") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CartaoSUSLabel" runat="server" Text='<%# Eval("CartaoSUS") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeExibicaoLabel" runat="server" Text='<%# Eval("NomeExibicao") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">CNES</th>
                                    <th runat="server">DataCriacao</th>
                                    <th runat="server">Nome</th>
                                    <th runat="server">CodPaciente</th>
                                    <th runat="server">CartaoSUS</th>
                                    <th runat="server">NomeExibicao</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CNESLabel" runat="server" Text='<%# Eval("CNES") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataCriacaoLabel" runat="server" Text='<%# Eval("DataCriacao") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodPacienteLabel" runat="server" Text='<%# Eval("CodPaciente") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CartaoSUSLabel" runat="server" Text='<%# Eval("CartaoSUS") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeExibicaoLabel" runat="server" Text='<%# Eval("NomeExibicao") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdsemusConnectionString %>" SelectCommand="SELECT PAS_AvaliacaoInicial.CNES, PAS_AvaliacaoInicial.DataCriacao, Geral_Paciente.Nome, Geral_Paciente.CodPaciente, Geral_Paciente.CartaoSUS, PAS_SalaAtendimento.NomeExibicao FROM PAS_AvaliacaoInicial INNER JOIN Geral_Paciente ON PAS_AvaliacaoInicial.CodPaciente = Geral_Paciente.CodPaciente INNER JOIN PAS_SalaAtendimento ON PAS_AvaliacaoInicial.CodSalaAtendimento = PAS_SalaAtendimento.CodSalaAtendimento WHERE  YEAR(PAS_AvaliacaoInicial.DataCriacao) = 2019 AND MONTH(PAS_AvaliacaoInicial.DataCriacao) = 04 AND (PAS_AvaliacaoInicial.CNES = 7260784 OR PAS_AvaliacaoInicial.CNES = 9020284 OR PAS_AvaliacaoInicial.CNES = 9617868)"></asp:SqlDataSource>
        
    </form>
</body>
</html>
