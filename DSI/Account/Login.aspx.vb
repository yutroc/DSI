Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page
    Private nombreUsuario As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub LoginUser_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles LoginUser.Authenticate

        If (validarUsuario(LoginUser.UserName, LoginUser.Password)) Then
            'FormsAuthentication.RedirectFromLoginPage(LoginUser.UserName, LoginUser.RememberMeSet)
            FormsAuthentication.RedirectFromLoginPage(nombreUsuario, LoginUser.RememberMeSet)
        End If

    End Sub
    Protected Function validarUsuario(ByVal login As String, ByRef password As String) As Boolean

        Session.Add("rut", login)
        Session.Add("password", password)
        Dim consultaSQL As String
        Dim usuarioEncontrado As Boolean
        usuarioEncontrado = False
        Dim dv As DataView
        dv = CType(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)

       

        If dv.Table.Rows.Count > 0 Then
            nombreUsuario = CType(dv.Table.Rows(0)(0), String)
            usuarioEncontrado = True
        End If

        'consultaSQL = "SELECT rut,password,nombre  FROM SC_Usuario WHERE rut='" & login.Trim() & "' AND password='" & password & "' "
        'Debug.WriteLine(consultaSQL)
        'Dim conectar As String = ConfigurationManager.ConnectionStrings("ConnectionStringDSI").ConnectionString
        'Dim sqlconectar As SqlConnection = New SqlConnection(conectar)
        'Dim cmd As SqlCommand = New SqlCommand(consultaSQL, sqlconectar)
        'cmd.Connection.Open()

        'Try
        '    Dim dr As SqlDataReader = cmd.ExecuteReader
        '    If (dr.HasRows) Then
        '        dr.Read()
        '        usuarioEncontrado = True
        '        nombreUsuario = dr("nombre")
        '    End If
        'Catch ex As Exception


        'End Try

        'cmd.Connection.Close()
        Return usuarioEncontrado
    End Function

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting
    End Sub
End Class