<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"
    CodeBehind="ReporteClientes.aspx.vb" Inherits="DSI.ReporteClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <h1>
            Reporte Cliente</h1>
    </center>
    &nbsp;Ciudad:<asp:TextBox ID="TextBoxCiudad" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Estado:<asp:DropDownList ID="DropDownListEstado" runat="server" DataSourceID="SqlDataSourceEstado"
        DataTextField="ESTADO" DataValueField="ID">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSourceEstado" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;ESTADO&quot;">
    </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" CssClass="botones" Text="Mostrar todos los clientes" />
        <asp:Button ID="Button1" runat="server" CssClass="botones" Text="Filtrar por Ciudad y Estado" />
        <asp:Button ID="Button3" runat="server" CssClass="botones" Text="Filtrar solo por Ciudad" />
        <asp:Button ID="Button4" runat="server" CssClass="botones" Text="Filtrar solo por Estado" />
    </p>
    <p>
        <div class="datagrid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RUT"
                DataSourceID="SqlDataSourceCliente">
                <Columns>
                    <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                    <asp:BoundField DataField="COMUNA" HeaderText="COMUNA" SortExpression="COMUNA" />
                    <asp:BoundField DataField="CIUDAD" HeaderText="CIUDAD" SortExpression="CIUDAD" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="EXPR1" HeaderText="ESTADO" SortExpression="EXPR1" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="RUT"
                DataSourceID="SqlDataSourceTodosClientes">
                <Columns>
                    <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                    <asp:BoundField DataField="COMUNA" HeaderText="COMUNA" SortExpression="COMUNA" />
                    <asp:BoundField DataField="CIUDAD" HeaderText="CIUDAD" SortExpression="CIUDAD" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="RUT"
                DataSourceID="SqlDataSourceClienteCiudad">
                <Columns>
                    <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                    <asp:BoundField DataField="COMUNA" HeaderText="COMUNA" SortExpression="COMUNA" />
                    <asp:BoundField DataField="CIUDAD" HeaderText="CIUDAD" SortExpression="CIUDAD" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="RUT"
                DataSourceID="SqlDataSourceClienteEstado">
                <Columns>
                    <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                    <asp:BoundField DataField="COMUNA" HeaderText="COMUNA" SortExpression="COMUNA" />
                    <asp:BoundField DataField="CIUDAD" HeaderText="CIUDAD" SortExpression="CIUDAD" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="EXPR1" HeaderText="ESTADO" SortExpression="EXPR1" />
                </Columns>
            </asp:GridView>
        </div>
        <input class="oculto" onclick="print();" type="button"  value="Imprimir" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" CssClass="botones" Text="Volver" />
        <asp:SqlDataSource ID="SqlDataSourceClienteEstado" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT SC_CLIENTE.RUT, SC_CLIENTE.NOMBRE, SC_CLIENTE.DIRECCION, SC_CLIENTE.COMUNA, SC_CLIENTE.CIUDAD, SC_CLIENTE.TELEFONO, SC_CLIENTE.EMAIL, ESTADO.ESTADO AS EXPR1 FROM SC_CLIENTE, ESTADO WHERE SC_CLIENTE.ESTADO = ESTADO.ID AND (SC_CLIENTE.ESTADO = :ESTADO)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListEstado" Name="ESTADO" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceClienteCiudad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT SC_CLIENTE.RUT, SC_CLIENTE.NOMBRE, SC_CLIENTE.DIRECCION, SC_CLIENTE.COMUNA, SC_CLIENTE.CIUDAD, SC_CLIENTE.TELEFONO, SC_CLIENTE.EMAIL, ESTADO.ESTADO FROM SC_CLIENTE, ESTADO WHERE SC_CLIENTE.ESTADO = ESTADO.ID AND (SC_CLIENTE.CIUDAD = :CIUDAD)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxCiudad" Name="CIUDAD" PropertyName="Text"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceTodosClientes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT SC_CLIENTE.RUT, SC_CLIENTE.NOMBRE, SC_CLIENTE.DIRECCION, SC_CLIENTE.COMUNA, SC_CLIENTE.CIUDAD, SC_CLIENTE.TELEFONO, ESTADO.ESTADO, SC_CLIENTE.EMAIL FROM ESTADO, SC_CLIENTE WHERE ESTADO.ID = SC_CLIENTE.ESTADO">
        </asp:SqlDataSource>
        &nbsp;</p>
    &nbsp;<p>
        <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT SC_CLIENTE.RUT, SC_CLIENTE.NOMBRE, SC_CLIENTE.DIRECCION, SC_CLIENTE.COMUNA, SC_CLIENTE.CIUDAD, SC_CLIENTE.TELEFONO, SC_CLIENTE.EMAIL, ESTADO.ESTADO AS EXPR1 FROM SC_CLIENTE, ESTADO WHERE SC_CLIENTE.ESTADO = ESTADO.ID AND (SC_CLIENTE.ESTADO = :ESTADO) AND (SC_CLIENTE.CIUDAD = :CIUDAD)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListEstado" Name="ESTADO" PropertyName="SelectedValue"
                    Type="String" DefaultValue="%" />
                <asp:ControlParameter ControlID="TextBoxCiudad" Name="CIUDAD" PropertyName="Text"
                    Type="String" DefaultValue="%" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
