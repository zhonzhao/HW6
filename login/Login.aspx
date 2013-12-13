<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="login_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12 col-md-offset-3">
            <div class="form-group">
                <asp:Login ID="Login1" runat="server"  LoginButtonStyle-CssClass="btn btn-default" TextBoxStyle-CssClass="form-control" CheckBoxStyle-CssClass="checkbox"></asp:Login>
            </div>
        </div>
    </div>
    
</asp:Content>

