Public Class MenuContratoClausula
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'FormViewMenuContratoClausula.ChangeMode(FormViewMode.ReadOnly)

    End Sub

    

    Protected Sub GridViewClausula_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewClausula.SelectedIndexChanged
        Dim idClausula As Integer
        idClausula = GridViewClausula.SelectedDataKey.Value
        Session.Add("idClausula2", idClausula)
        SqlDataSourceClausulasDelContrato.InsertParameters("id_clausula").DefaultValue = Session.Item("idClausula2")
        SqlDataSourceClausulasDelContrato.InsertParameters("id_contrato").DefaultValue = Session.Item("idUltimoContratoInsert")
        Try
            SqlDataSourceClausulasDelContrato.Insert()
          

        Catch ex As Exception
          

        End Try

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewClausulasDelContrato.SelectedIndexChanged

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("MenuContratoAnexo.aspx")
    End Sub

    Protected Sub SqlDataSourceClausula_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceClausula.Selecting

    End Sub

    Protected Sub SqlDataSourceMenuContratoClausula_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceMenuContratoClausula.Selecting

    End Sub
End Class