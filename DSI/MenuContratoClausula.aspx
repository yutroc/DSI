<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master" CodeBehind="MenuContratoClausula.aspx.vb" Inherits="DSI.MenuContratoClausula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Agregar clausulas al contrato</h2>
<h3> <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label></h3>
    <p> &nbsp;</p>
    <h3>Seleccione las clausulas que desea agregar</h3>
    <asp:GridView ID="GridViewClausula" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="ID_CLAUSULA" 
        DataSourceID="SqlDataSourceClausula">
        <Columns>
            <asp:BoundField DataField="ID_CLAUSULA" HeaderText="ID_CLAUSULA" 
                ReadOnly="True" SortExpression="ID_CLAUSULA" />
            <asp:BoundField DataField="TITULO" HeaderText="TITULO" 
                SortExpression="TITULO" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                SortExpression="DESCRIPCION" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceClausula" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:connectionStringDSI.ProviderName %>" 
        
        SelectCommand="SELECT &quot;ID_CLAUSULA&quot;, &quot;TITULO&quot;, &quot;DESCRIPCION&quot; FROM &quot;SC_CLAUSULA&quot; ORDER BY &quot;TITULO&quot;">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceMenuContratoClausula" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_CONTRATO&quot; WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO" 
        InsertCommand="INSERT INTO &quot;SC_CONTRATO&quot; (&quot;ID_CONTRATO&quot;, &quot;FC_CREACION&quot;, &quot;FC_INICIO&quot;, &quot;FC_TERMINO&quot;, &quot;ESTADO_VIGENCIA&quot;, &quot;VALOR_TOTAL&quot;, &quot;ID_TIPO_CONTRATO&quot;, &quot;RUT&quot;, &quot;U_ORIGEN&quot;, &quot;U_DESTINO&quot;) VALUES (:ID_CONTRATO, :FC_CREACION, :FC_INICIO, :FC_TERMINO, :ESTADO_VIGENCIA, :VALOR_TOTAL, :ID_TIPO_CONTRATO, :RUT, :U_ORIGEN, :U_DESTINO)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT MAX(&quot;ID_CONTRATO&quot;) as m FROM SC_CONTRATO" 
        
        UpdateCommand="UPDATE &quot;SC_CONTRATO&quot; SET &quot;FC_CREACION&quot; = :FC_CREACION, &quot;FC_INICIO&quot; = :FC_INICIO, &quot;FC_TERMINO&quot; = :FC_TERMINO, &quot;ESTADO_VIGENCIA&quot; = :ESTADO_VIGENCIA, &quot;VALOR_TOTAL&quot; = :VALOR_TOTAL, &quot;ID_TIPO_CONTRATO&quot; = :ID_TIPO_CONTRATO, &quot;RUT&quot; = :RUT, &quot;U_ORIGEN&quot; = :U_ORIGEN, &quot;U_DESTINO&quot; = :U_DESTINO WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO">
        <DeleteParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="FC_CREACION" Type="String" />
            <asp:Parameter Name="FC_INICIO" Type="String" />
            <asp:Parameter Name="FC_TERMINO" Type="String" />
            <asp:Parameter Name="ESTADO_VIGENCIA" Type="String" />
            <asp:Parameter Name="VALOR_TOTAL" Type="Decimal" />
            <asp:Parameter Name="ID_TIPO_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="U_ORIGEN" Type="Decimal" />
            <asp:Parameter Name="U_DESTINO" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FC_CREACION" Type="String" />
            <asp:Parameter Name="FC_INICIO" Type="String" />
            <asp:Parameter Name="FC_TERMINO" Type="String" />
            <asp:Parameter Name="ESTADO_VIGENCIA" Type="String" />
            <asp:Parameter Name="VALOR_TOTAL" Type="Decimal" />
            <asp:Parameter Name="ID_TIPO_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="U_ORIGEN" Type="Decimal" />
            <asp:Parameter Name="U_DESTINO" Type="Decimal" />
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3>Clausulas asociadas al contrato</h3>
    <asp:GridView ID="GridViewClausulasDelContrato" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO,ID_CLAUSULA" 
        DataSourceID="SqlDataSourceClausulasDelContrato">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="ID_CLAUSULA" HeaderText="ID_CLAUSULA" 
                ReadOnly="True" SortExpression="ID_CLAUSULA" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceClausulasDelContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_CONTRATO_CLAUSULA&quot; WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO AND &quot;ID_CLAUSULA&quot; = :ID_CLAUSULA" 
        InsertCommand="INSERT INTO &quot;SC_CONTRATO_CLAUSULA&quot; (&quot;ID_CONTRATO&quot;, &quot;ID_CLAUSULA&quot;) VALUES (:ID_CONTRATO, :ID_CLAUSULA)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_CONTRATO_CLAUSULA&quot; WHERE (&quot;ID_CONTRATO&quot; = :ID_CONTRATO)">
        <DeleteParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_CLAUSULA" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_CLAUSULA" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_CONTRATO" SessionField="IdUltimoContratoInsert" 
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server">Siguiente</asp:LinkButton>
</asp:Content>
