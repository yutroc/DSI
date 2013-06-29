Public Class MenuContratoProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridViewProductos_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewProductos.SelectedIndexChanged
        Dim idProducto As Integer

        idProducto = GridViewProductos.SelectedDataKey.Value
        Session.Add("idProducto2", idProducto)
        SqlDataSourceProductosParaContrato.InsertParameters("id_contrato").DefaultValue = Session.Item("idUltimoContratoInsert")
        SqlDataSourceProductosParaContrato.InsertParameters("id_producto").DefaultValue = Session.Item("idProducto2")
        SqlDataSourceProductosParaContrato.InsertParameters("cantidad").DefaultValue = "0"
        'Try
        SqlDataSourceProductosParaContrato.Insert()


        'Catch ex As Exception


        'End Try
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("Imprimible.aspx")
    End Sub

    Protected Sub GridViewProductosParaContrato_RowUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridViewProductosParaContrato.RowUpdated
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = ""
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "Producto no se actualizo correctamente Asegurese de insertar un valor correcto"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim nombre As String
        nombre = TextBoxBuscarProducto.Text
        Session.Add("nombreProductoEnSeleccion", nombre)
        Me.GridViewProductos.DataBind()
    End Sub

End Class