Public Class MantenedorAnexo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridViewAnexo_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewAnexo.SelectedIndexChanged
        Dim id_anexo As Integer
        id_anexo = GridViewAnexo.SelectedDataKey.Value
        Session.Add("id_anexo", id_anexo)
        Response.Redirect("FormAnexo.aspx")
    End Sub
End Class