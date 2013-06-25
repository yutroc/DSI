Public Class FormAnexo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormViewAnexo.ItemUpdated
        If (e.Exception Is Nothing) Then
            Me.LabelMensajes.Text = "Item editado correctamente"
            Me.LabelMensajes.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensajes.Text = "No se pudo editar el Item"
            Me.LabelMensajes.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub FormViewAnexo_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormViewAnexo.ItemInserted
        If (e.Exception Is Nothing) Then
            Me.LabelMensajes.Text = "Item agregado correctamente"
            Me.LabelMensajes.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensajes.Text = "No se pudo agregar el Item"
            Me.LabelMensajes.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub FormViewAnexo_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormViewAnexo.ItemDeleted
        If (e.Exception Is Nothing) Then
            Me.LabelMensajes.Text = "Item eliminado correctamente"
            Me.LabelMensajes.ForeColor = Drawing.Color.Green
        Else
            Me.LabelMensajes.Text = "No se pudo eliminar el Item"
            Me.LabelMensajes.ForeColor = Drawing.Color.Red
            e.ExceptionHandled = True
        End If
    End Sub
End Class