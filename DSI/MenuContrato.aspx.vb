Public Class MenuContrato
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Session.Item("idUltimoContratoInsert") Is Nothing) Then
            ' Session.Add("idContratoClausula", idContrato)
            'Response.Redirect("MenuContratoClausula.aspx")
            FormViewMenuContrato.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormViewMenuContrato.PageIndexChanging

    End Sub

    Protected Sub FormViewMenuContrato_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormViewMenuContrato.ItemInserted




        Dim maxid As Integer
        Dim dv As DataView
        dv = CType(SqlDataSourceClienteContrato.Select(DataSourceSelectArguments.Empty), DataView)
        maxid = CType(dv.Table.Rows(0)(0), Integer)
        'e.Values.Item("idUltimoContratoInsert") 
        'Debug.WriteLine(maxid)

        Session.Add("idUltimoContratoInsert", maxid)
        e.Values.Item("idUltimoContratoInsert") = maxid
        Debug.WriteLine(e.Values.Item("idUltimoContratoInsert"))
        Debug.WriteLine(e.Values.Item("idClienteParaContrato"))
        SqlDataSourceGuardaClienteContrato.InsertParameters("rut").DefaultValue = Session.Item("idClienteParaContrato")
        SqlDataSourceGuardaClienteContrato.InsertParameters("id_contrato").DefaultValue = Session.Item("idUltimoContratoInsert")
        Try
            SqlDataSourceGuardaClienteContrato.Insert()


        Catch ex As Exception


        End Try


        Response.Redirect("MenuContratoClausula.aspx")
        'Manejador de Excepciones 
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = "Contrato creado Correctamente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "No se pudo crear el contrato"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub FormViewMenuContrato_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormViewMenuContrato.ItemUpdated
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = "Contrato actualizado Correctamente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "No se pudo actualizar el contrato"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
        Response.Redirect("MenuContratoClausula.aspx")
    End Sub

    Protected Sub SqlDataSourceClienteContrato_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceClienteContrato.Selecting

    End Sub

    Protected Sub SqlDataSourceMenuContrato_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSourceMenuContrato.Inserted
       



    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub

    Protected Sub ImageButtonFechaInicio_Click1(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)


    End Sub

    Protected Sub CalendarInicio_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub FC_CREACIONTextBox_TextChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub SqlDataSourceMenuContrato_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceMenuContrato.Selecting

    End Sub

    Protected Sub SqlDataSourceGuardaClienteContrato_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceGuardaClienteContrato.Selecting

    End Sub

    Protected Sub FormViewMenuContrato_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormViewMenuContrato.ItemDeleted
        'Manejador de Excepciones 
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = "Contrato eliminado Correctamente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "No se pudo eliminar el Contrato, asegurece que no tenga productos, clausulas, o anexos asociados"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub InsertCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("ListadoContratoClausula.aspx")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("ListadoContratoClausula.aspx")
    End Sub
End Class