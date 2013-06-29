Public Class MenuContratoAnexo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridViewAnexos_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewAnexos.SelectedIndexChanged
        Dim idAnexo As Integer

        idAnexo = GridViewAnexos.SelectedDataKey.Value
        Session.Add("idAnexo2", idAnexo)
        SqlDataSourceAnexosDelContrato.InsertParameters("id_anexo").DefaultValue = Session.Item("idAnexo2")
        SqlDataSourceAnexosDelContrato.InsertParameters("id_contrato").DefaultValue = Session.Item("idUltimoContratoInsert")
        Try
            SqlDataSourceAnexosDelContrato.Insert()


        Catch ex As Exception


        End Try
    End Sub

    Protected Sub GridViewContratoAnexo_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewContratoAnexo.SelectedIndexChanged

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("MenuContratoProducto.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim nombre As String
        nombre = TextBoxBuscarAnexo.Text
        Session.Add("nombreAnexoEnSeleccion", nombre)
        Me.GridViewAnexos.DataBind()
    End Sub
End Class