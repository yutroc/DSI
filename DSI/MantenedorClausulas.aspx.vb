Public Class MantenedorClausulas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewClausula.SelectedIndexChanged
        Dim id_clausula As Integer
        id_clausula = GridViewClausula.SelectedDataKey.Value
        Session.Add("id_clausula", id_clausula)
        Response.Redirect("FormClausula.aspx")
    End Sub
End Class