<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Your Email:</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" Placeholder="youremail@email.com"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputMessage" class="col-lg-2 control-label">Your Message:</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="tbMessage" runat="server" Rows="3" Placeholder="Your Message" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10 pull-right">
                        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-default" />
                    </div>
                  </div>
                <asp:Label ID="lblResponse" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

