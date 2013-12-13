
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblToday.Text = Date.Now()

        If HttpContext.Current.User.Identity.IsAuthenticated = False Then
            lblLogin.Text = "Please Login to access admin resources"
        Else
            lblLogin.Text = "Signed in as "
        End If
    End Sub
End Class

