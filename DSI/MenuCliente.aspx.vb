Public Class MenuCliente
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session.Item("idCliente") Is Nothing) Then
            FormViewMenuCliente.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Protected Sub FormViewMenuCliente_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormViewMenuCliente.PageIndexChanging

    End Sub

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub FormViewMenuCliente_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormViewMenuCliente.ItemDeleted
        'Manejador de Excepciones 
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = "Cliente eliminado Correctamente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "No se pudo eliminar el Cliente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub FormViewMenuCliente_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormViewMenuCliente.ItemUpdated
        'Manejador de Excepciones 
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = "Cliente actualizado Correctamente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "No se pudo actualizar el cliente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub FormViewMenuCliente_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormViewMenuCliente.ItemInserted
        'Manejador de Excepciones 
        If (e.Exception Is Nothing) Then
            Me.LabelMensaje.Text = "Cliente creado Correctamente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensaje.Text = "No se pudo crear el cliente"
            Me.LabelMensaje.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub SqlDataSourceMenuCliente_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceMenuCliente.Selecting

    End Sub

   

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("WebFormListadoCliente.aspx")
    End Sub

    Protected Sub DropDownListEstado_SelectedIndexChanged1(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
End Class