<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MenuContratoAnexo.aspx.vb" Inherits="DSI.MenuContratoAnexo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Selecione anexos"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Ingrese parte del titulo"></asp:Label>
    <asp:TextBox ID="TextBoxBuscarAnexo" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
    <asp:GridView ID="GridViewAnexos" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_ANEXO" 
        DataSourceID="SqlDataSourceAnexos">
        <Columns>
            <asp:BoundField DataField="ID_ANEXO" HeaderText="ID_ANEXO" ReadOnly="True" 
                SortExpression="ID_ANEXO" />
            <asp:BoundField DataField="TITULO" HeaderText="TITULO" 
                SortExpression="TITULO" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                SortExpression="DESCRIPCION" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceAnexos" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_ANEXO&quot; WHERE &quot;ID_ANEXO&quot; = :ID_ANEXO" 
        InsertCommand="INSERT INTO &quot;SC_ANEXO&quot; (&quot;ID_ANEXO&quot;, &quot;TITULO&quot;, &quot;DESCRIPCION&quot;, &quot;ESTADO&quot;) VALUES (:ID_ANEXO, :TITULO, :DESCRIPCION, :ESTADO)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_ANEXO&quot; WHERE (&quot;TITULO&quot; LIKE '%' || :TITULO || '%') ORDER BY &quot;TITULO&quot;" 
        
        UpdateCommand="UPDATE &quot;SC_ANEXO&quot; SET &quot;TITULO&quot; = :TITULO, &quot;DESCRIPCION&quot; = :DESCRIPCION, &quot;ESTADO&quot; = :ESTADO WHERE &quot;ID_ANEXO&quot; = :ID_ANEXO">
        <DeleteParameters>
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="ESTADO" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxBuscarAnexo" DefaultValue="%" 
                Name="TITULO" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="ESTADO" Type="Decimal" />
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Anexos del contrato"></asp:Label>
    <asp:GridView ID="GridViewContratoAnexo" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO,ID_ANEXO" 
        DataSourceID="SqlDataSourceAnexosDelContrato">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="ID_ANEXO" HeaderText="ID_ANEXO" ReadOnly="True" 
                SortExpression="ID_ANEXO" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceAnexosDelContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_CONTRATO_ANEXO&quot; WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO AND &quot;ID_ANEXO&quot; = :ID_ANEXO" 
        InsertCommand="INSERT INTO &quot;SC_CONTRATO_ANEXO&quot; (&quot;ID_CONTRATO&quot;, &quot;ID_ANEXO&quot;) VALUES (:ID_CONTRATO, :ID_ANEXO)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_CONTRATO_ANEXO&quot; WHERE (&quot;ID_CONTRATO&quot; = :ID_CONTRATO) ORDER BY &quot;ID_ANEXO&quot;">
        <DeleteParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_CONTRATO" SessionField="idUltimoContratoInsert" 
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server">Siguiente</asp:LinkButton>
</asp:Content>
