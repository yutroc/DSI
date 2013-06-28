<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"
    CodeBehind="MenuCliente.aspx.vb" Inherits="DSI.MenuCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
    <asp:FormView ID="FormViewMenuCliente" runat="server" DataKeyNames="RUT" DataSourceID="SqlDataSourceMenuCliente"
        AllowPaging="True">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                        RUT:
                    </td>
                    <td>
                        <asp:Label ID="RUTLabel1" runat="server" Text='<%# Eval("RUT") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        NOMBRE:
                    </td>
                    <td>
                        <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        DIRECCION:
                    </td>
                    <td>
                        <asp:TextBox ID="DIRECCIONTextBox" runat="server" Text='<%# Bind("DIRECCION") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        COMUNA:
                    </td>
                    <td>
                        <asp:TextBox ID="COMUNATextBox" runat="server" Text='<%# Bind("COMUNA") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        CIUDAD:
                    </td>
                    <td>
                        <asp:TextBox ID="CIUDADTextBox" runat="server" Text='<%# Bind("CIUDAD") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TELEFONO:
                    </td>
                    <td>
                        <asp:TextBox ID="TELEFONOTextBox" runat="server" Text='<%# Bind("TELEFONO") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        ESTADO:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListEstado" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("ESTADO") %>'>
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        EMAIL:
                    </td>
                    <td>
                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Actualizar" OnClick="UpdateButton_Click" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>
                        RUT:
                    </td>
                    <td>
                        <asp:TextBox ID="RUTTextBox" runat="server" Text='<%# Bind("RUT") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        NOMBRE:
                    </td>
                    <td>
                        <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        DIRECCION:
                    </td>
                    <td>
                        <asp:TextBox ID="DIRECCIONTextBox" runat="server" Text='<%# Bind("DIRECCION") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        COMUNA:
                    </td>
                    <td>
                        <asp:TextBox ID="COMUNATextBox" runat="server" Text='<%# Bind("COMUNA") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        CIUDAD:
                    </td>
                    <td>
                        <asp:TextBox ID="CIUDADTextBox" runat="server" Text='<%# Bind("CIUDAD") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TELEFONO:
                    </td>
                    <td>
                        <asp:TextBox ID="TELEFONOTextBox" runat="server" Text='<%# Bind("TELEFONO") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        ESTADO:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListEstado" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                            SelectedValue='<%# Bind("ESTADO") %>'>
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        EMAIL:
                    </td>
                    <td>
                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        RUT:
                    </td>
                    <td>
                        <asp:Label ID="RUTLabel" runat="server" Text='<%# Eval("RUT") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        NOMBRE:
                    </td>
                    <td>
                        <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Bind("NOMBRE") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        DIRECCION:
                    </td>
                    <td>
                        <asp:Label ID="DIRECCIONLabel" runat="server" Text='<%# Bind("DIRECCION") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        COMUNA:
                    </td>
                    <td>
                        <asp:Label ID="COMUNALabel" runat="server" Text='<%# Bind("COMUNA") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        CIUDAD:
                    </td>
                    <td>
                        <asp:Label ID="CIUDADLabel" runat="server" Text='<%# Bind("CIUDAD") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        TELEFONO:
                    </td>
                    <td>
                        <asp:Label ID="TELEFONOLabel" runat="server" Text='<%# Bind("TELEFONO") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        ESTADO:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Enabled="False"
                            SelectedValue='<%# Bind("ESTADO") %>'>
                            <asp:ListItem Value="1">Avtivo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        EMAIL:
                    </td>
                    <td>
                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                OnClick="DeleteButton_Click" OnClientClick="return confirm(&quot;Seguro que desea eliminar ?&quot;);"
                Text="Eliminar" />
            &nbsp;
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceMenuCliente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        DeleteCommand="DELETE FROM &quot;SC_CLIENTE&quot; WHERE &quot;RUT&quot; = :RUT"
        InsertCommand="INSERT INTO &quot;SC_CLIENTE&quot; (&quot;RUT&quot;, &quot;NOMBRE&quot;, &quot;DIRECCION&quot;, &quot;COMUNA&quot;, &quot;CIUDAD&quot;, &quot;TELEFONO&quot;, &quot;ESTADO&quot;, &quot;EMAIL&quot;) VALUES (:RUT, :NOMBRE, :DIRECCION, :COMUNA, :CIUDAD, :TELEFONO, :ESTADO, :EMAIL)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;SC_CLIENTE&quot; WHERE (&quot;RUT&quot; = :RUT)"
        UpdateCommand="UPDATE &quot;SC_CLIENTE&quot; SET &quot;NOMBRE&quot; = :NOMBRE, &quot;DIRECCION&quot; = :DIRECCION, &quot;COMUNA&quot; = :COMUNA, &quot;CIUDAD&quot; = :CIUDAD, &quot;TELEFONO&quot; = :TELEFONO, &quot;ESTADO&quot; = :ESTADO, &quot;EMAIL&quot; = :EMAIL WHERE &quot;RUT&quot; = :RUT">
        <DeleteParameters>
            <asp:Parameter Name="RUT" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DIRECCION" Type="String" />
            <asp:Parameter Name="COMUNA" Type="String" />
            <asp:Parameter Name="CIUDAD" Type="String" />
            <asp:Parameter Name="TELEFONO" Type="String" />
            <asp:Parameter Name="ESTADO" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="RUT" SessionField="idCliente" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DIRECCION" Type="String" />
            <asp:Parameter Name="COMUNA" Type="String" />
            <asp:Parameter Name="CIUDAD" Type="String" />
            <asp:Parameter Name="TELEFONO" Type="String" />
            <asp:Parameter Name="ESTADO" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="RUT" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server">Volver a la lista de clientes</asp:LinkButton>
</asp:Content>
