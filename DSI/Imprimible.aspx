<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master" CodeBehind="Imprimible.aspx.vb" Inherits="DSI.Imprimible" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 373px;
        }
        .style2
        {
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <center><h1>
                CONTRATO de 
                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSourceTipo">
                    <EditItemTemplate>
                        NOMBRE:
                        <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Actualizar" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        NOMBRE:
                        <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insertar" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="NOMBRELabel" runat="server" Text='<%# Bind("NOMBRE") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
&nbsp;<asp:SqlDataSource ID="SqlDataSourceTipo" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
                    SelectCommand="SELECT SC_TIPO_CONTRATO.NOMBRE FROM SC_TIPO_CONTRATO, SC_CONTRATO WHERE SC_TIPO_CONTRATO.ID_TIPO_CONTRATO = SC_CONTRATO.ID_TIPO_CONTRATO AND (SC_CONTRATO.ID_CONTRATO = :ID_TIPO_CONTRATO)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID_TIPO_CONTRATO" SessionField="id_contrato" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </h1>
        </center>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_CONTRATO,EXPR1" 
            DataSourceID="SqlDataSourceContrato" Width="644px">
            <EditItemTemplate>
                ID_CONTRATO:
                <asp:Label ID="ID_CONTRATOLabel1" runat="server" 
                    Text='<%# Eval("ID_CONTRATO") %>' />
                <br />
                FC_CREACION:
                <asp:TextBox ID="FC_CREACIONTextBox" runat="server" 
                    Text='<%# Bind("FC_CREACION") %>' />
                <br />
                FC_INICIO:
                <asp:TextBox ID="FC_INICIOTextBox" runat="server" 
                    Text='<%# Bind("FC_INICIO") %>' />
                <br />
                FC_TERMINO:
                <asp:TextBox ID="FC_TERMINOTextBox" runat="server" 
                    Text='<%# Bind("FC_TERMINO") %>' />
                <br />
                VALOR_TOTAL:
                <asp:TextBox ID="VALOR_TOTALTextBox" runat="server" 
                    Text='<%# Bind("VALOR_TOTAL") %>' />
                <br />
                RUT:
                <asp:TextBox ID="RUTTextBox" runat="server" Text='<%# Bind("RUT") %>' />
                <br />
                U_ORIGEN:
                <asp:TextBox ID="U_ORIGENTextBox" runat="server" 
                    Text='<%# Bind("U_ORIGEN") %>' />
                <br />
                U_DESTINO:
                <asp:TextBox ID="U_DESTINOTextBox" runat="server" 
                    Text='<%# Bind("U_DESTINO") %>' />
                <br />
                NOMBRE:
                <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                <br />
                EXPR1:
                <asp:Label ID="EXPR1Label1" runat="server" Text='<%# Eval("EXPR1") %>' />
                <br />
                EXPR2:
                <asp:TextBox ID="EXPR2TextBox" runat="server" Text='<%# Bind("EXPR2") %>' />
                <br />
                DIRECCION:
                <asp:TextBox ID="DIRECCIONTextBox" runat="server" 
                    Text='<%# Bind("DIRECCION") %>' />
                <br />
                COMUNA:
                <asp:TextBox ID="COMUNATextBox" runat="server" Text='<%# Bind("COMUNA") %>' />
                <br />
                CIUDAD:
                <asp:TextBox ID="CIUDADTextBox" runat="server" Text='<%# Bind("CIUDAD") %>' />
                <br />
                TELEFONO:
                <asp:TextBox ID="TELEFONOTextBox" runat="server" 
                    Text='<%# Bind("TELEFONO") %>' />
                <br />
                ESTADO:
                <asp:TextBox ID="ESTADOTextBox" runat="server" Text='<%# Bind("ESTADO") %>' />
                <br />
                EMAIL:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                ROWID:
                <asp:TextBox ID="ROWIDTextBox" runat="server" Text='<%# Bind("ROWID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ID_CONTRATO:
                <asp:TextBox ID="ID_CONTRATOTextBox" runat="server" 
                    Text='<%# Bind("ID_CONTRATO") %>' />
                <br />
                FC_CREACION:
                <asp:TextBox ID="FC_CREACIONTextBox" runat="server" 
                    Text='<%# Bind("FC_CREACION") %>' />
                <br />
                FC_INICIO:
                <asp:TextBox ID="FC_INICIOTextBox" runat="server" 
                    Text='<%# Bind("FC_INICIO") %>' />
                <br />
                FC_TERMINO:
                <asp:TextBox ID="FC_TERMINOTextBox" runat="server" 
                    Text='<%# Bind("FC_TERMINO") %>' />
                <br />
                VALOR_TOTAL:
                <asp:TextBox ID="VALOR_TOTALTextBox" runat="server" 
                    Text='<%# Bind("VALOR_TOTAL") %>' />
                <br />
                RUT:
                <asp:TextBox ID="RUTTextBox" runat="server" Text='<%# Bind("RUT") %>' />
                <br />
                U_ORIGEN:
                <asp:TextBox ID="U_ORIGENTextBox" runat="server" 
                    Text='<%# Bind("U_ORIGEN") %>' />
                <br />
                U_DESTINO:
                <asp:TextBox ID="U_DESTINOTextBox" runat="server" 
                    Text='<%# Bind("U_DESTINO") %>' />
                <br />
                NOMBRE:
                <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
                <br />
                EXPR1:
                <asp:TextBox ID="EXPR1TextBox" runat="server" Text='<%# Bind("EXPR1") %>' />
                <br />
                EXPR2:
                <asp:TextBox ID="EXPR2TextBox" runat="server" Text='<%# Bind("EXPR2") %>' />
                <br />
                DIRECCION:
                <asp:TextBox ID="DIRECCIONTextBox" runat="server" 
                    Text='<%# Bind("DIRECCION") %>' />
                <br />
                COMUNA:
                <asp:TextBox ID="COMUNATextBox" runat="server" Text='<%# Bind("COMUNA") %>' />
                <br />
                CIUDAD:
                <asp:TextBox ID="CIUDADTextBox" runat="server" Text='<%# Bind("CIUDAD") %>' />
                <br />
                TELEFONO:
                <asp:TextBox ID="TELEFONOTextBox" runat="server" 
                    Text='<%# Bind("TELEFONO") %>' />
                <br />
                ESTADO:
                <asp:TextBox ID="ESTADOTextBox" runat="server" Text='<%# Bind("ESTADO") %>' />
                <br />
                EMAIL:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                ROWID:
                <asp:TextBox ID="ROWIDTextBox" runat="server" Text='<%# Bind("ROWID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
            <table>
                <tr>
                    <td class="style1">Numero de Contrato:<asp:Label ID="ID_CONTRATOLabel" runat="server" Text='<%# Eval("ID_CONTRATO") %>' /></td>
                    <td>Fecha de creacion:<asp:Label ID="FC_CREACIONLabel" runat="server" Text='<%# Bind("FC_CREACION") %>' /></td>
                </tr>
                <tr>
                    <td class="style1">Fecha de inicio:<asp:Label ID="FC_INICIOLabel" runat="server" Text='<%# Bind("FC_INICIO") %>' /></td>
                    <td>Fecha de termino:<asp:Label ID="FC_TERMINOLabel" runat="server" Text='<%# Bind("FC_TERMINO") %>'/></td>
                </tr>
                <tr>
                    <td class="style1">Nombre Empresa: Masisa S.A</td>
                    <td>RUT:77.777.777-7</td>
                </tr>
                <tr>
                    <td class="style1">Ubicacion de origen:<asp:Label ID="U_ORIGENLabel" runat="server" Text='<%# Bind("U_ORIGEN") %>' /></td>
                    <td>Ubicacion de destino:<asp:Label ID="U_DESTINOLabel" runat="server" Text='<%# Bind("U_DESTINO") %>' /></td>
                </tr>
                </table>
                    <center><h2>
                            Datos de Cliente
                            </h2>
                    </center>
               <table>
                <tr>
                    <td class="style2">Nombre Cliente:<asp:Label ID="EXPR2Label" runat="server" 
                            Text='<%# Bind("EXPR2") %>' />
                    </td>
                    <td>Rut:<asp:Label ID="EXPR1Label" runat="server" Text='<%# Eval("EXPR1") %>' /></td>
                </tr>
                <tr>
                    <td class="style2">Tipo de Contrato:<asp:Label ID="NOMBRELabel" runat="server" 
                            Text='<%# Bind("NOMBRE") %>' />
                    </td>
                    <td>Direccion:<asp:Label ID="DIRECCIONLabel" runat="server" Text='<%# Bind("DIRECCION") %>' /></td>
                </tr>
                <tr>
                    <td class="style2">Comuna: <asp:Label ID="COMUNALabel" runat="server" Text='<%# Bind("COMUNA") %>' /></td>
                    <td>Ciudad:<asp:Label ID="CIUDADLabel" runat="server" Text='<%# Bind("CIUDAD") %>' /></td>
                </tr>
                <tr>
                    <td class="style2">Telefono:<asp:Label ID="TELEFONOLabel" runat="server" Text='<%# Bind("TELEFONO") %>' /></td>
                    <td>EMAIL:<asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' /></td>
               </tr>
               <tr>
                    <td class="style2">
                        Valor Total:
                        <asp:Label ID="VALOR_TOTALLabel" runat="server" Text='<%# Bind("VALOR_TOTAL") %>' />
                    </td>
                    <td></td>
                </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <center><h2>
            PRODUCTOS</h2>
        </center>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSourceProductos">
            <Columns>
                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" 
                    SortExpression="CANTIDAD" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                    SortExpression="NOMBRE" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                    SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="VALOR" HeaderText="VALOR" SortExpression="VALOR" />
                <asp:BoundField DataField="DIAMETRO" HeaderText="DIAMETRO" 
                    SortExpression="DIAMETRO" />
                <asp:BoundField DataField="LARGO" HeaderText="LARGO" SortExpression="LARGO" />
                <asp:BoundField DataField="VOLUMEN" HeaderText="VOLUMEN" 
                    SortExpression="VOLUMEN" />
            </Columns>
        </asp:GridView>
    
        <center><h2>
            CLAUSULAS</h2>
         </center>
   
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSourceClausula">
            <Columns>
                <asp:BoundField DataField="TITULO" HeaderText="TITULO" 
                    SortExpression="TITULO" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                    SortExpression="DESCRIPCION" />
            </Columns>
        </asp:GridView>
    
    
        <center><h2>
            ANEXOS</h2>
        </center>
   
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSourceAnexo">
            <Columns>
                <asp:BoundField DataField="TITULO" HeaderText="TITULO" 
                    SortExpression="TITULO" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                    SortExpression="DESCRIPCION" />
            </Columns>
        </asp:GridView>
        <center>
        <input type="button" value="Imprimir" onclick="print();" class="oculto" />
        </center>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceContrato" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.RUT, SC_CONTRATO.U_ORIGEN, SC_CONTRATO.U_DESTINO, SC_TIPO_CONTRATO.NOMBRE, SC_CLIENTE.RUT AS EXPR1, SC_CLIENTE.NOMBRE AS EXPR2, SC_CLIENTE.DIRECCION, SC_CLIENTE.COMUNA, SC_CLIENTE.CIUDAD, SC_CLIENTE.TELEFONO, SC_CLIENTE.ESTADO, SC_CLIENTE.EMAIL, SC_CLIENTE.ROWID FROM SC_CONTRATO, SC_TIPO_CONTRATO, SC_CLIENTE WHERE SC_CONTRATO.ID_TIPO_CONTRATO = SC_TIPO_CONTRATO.ID_TIPO_CONTRATO AND SC_CONTRATO.RUT = SC_CLIENTE.RUT AND (SC_CONTRATO.ID_CONTRATO = :ID_CONTRATO)">
            <SelectParameters>
                <asp:SessionParameter Name="ID_CONTRATO" SessionField="id_contrato" 
                    Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            SelectCommand="SELECT SC_LIN_CONTRATO.CANTIDAD, SC_PRODUCTO.NOMBRE, SC_PRODUCTO.DESCRIPCION, SC_PRODUCTO.VALOR, SC_PRODUCTO_ASERRABLE.DIAMETRO, SC_PRODUCTO_ASERRABLE.LARGO, SC_PRODUCTO_PULPABLE.VOLUMEN FROM SC_LIN_CONTRATO, SC_PRODUCTO, SC_PRODUCTO_ASERRABLE, SC_PRODUCTO_PULPABLE WHERE SC_LIN_CONTRATO.ID_PRODUCTO = SC_PRODUCTO.ID_PRODUCTO AND SC_PRODUCTO.ID_PRODUCTO = SC_PRODUCTO_ASERRABLE.ID_PRODUCTO (+) AND SC_PRODUCTO.ID_PRODUCTO = SC_PRODUCTO_PULPABLE.ID_PRODUCTO (+) AND (SC_LIN_CONTRATO.ID_CONTRATO = :ID_CONTRATO)">
            <SelectParameters>
                <asp:SessionParameter Name="ID_CONTRATO" SessionField="id_contrato" 
                    Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceClausula" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            SelectCommand="SELECT SC_CLAUSULA.TITULO, SC_CLAUSULA.DESCRIPCION FROM SC_CONTRATO_CLAUSULA, SC_CLAUSULA WHERE SC_CONTRATO_CLAUSULA.ID_CLAUSULA = SC_CLAUSULA.ID_CLAUSULA AND (SC_CONTRATO_CLAUSULA.ID_CONTRATO = :ID_CONTRATO)">
            <SelectParameters>
                <asp:SessionParameter Name="ID_CONTRATO" SessionField="id_contrato" 
                    Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAnexo" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            SelectCommand="SELECT SC_ANEXO.TITULO, SC_ANEXO.DESCRIPCION FROM SC_CONTRATO_ANEXO, SC_ANEXO WHERE SC_CONTRATO_ANEXO.ID_ANEXO = SC_ANEXO.ID_ANEXO AND (SC_CONTRATO_ANEXO.ID_CONTRATO = :ID_CONTRATO)">
            <SelectParameters>
                <asp:SessionParameter Name="ID_CONTRATO" SessionField="id_contrato" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
