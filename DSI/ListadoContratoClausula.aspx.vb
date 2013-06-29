Public Class listaContratoClausula
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewContrato.SelectedIndexChanged
        Dim idContrato As Integer
        idContrato = GridViewContrato.SelectedDataKey.Value
        Session.Add("idUltimoContratoInsert", idContrato)
        Response.Redirect("MenuContrato.aspx")


    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Session.Remove("idContratoClausula")
        Session.Remove("idUltimoContratoInsert")
        'Response.Redirect("MenuContrato.aspx")
        Response.Redirect("SelecionClienteContrato.aspx")
    End Sub
End Class