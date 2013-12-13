
Partial Class admin_RecordDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Response.Redirect("~/admin/Default.aspx")
    End Sub
End Class
