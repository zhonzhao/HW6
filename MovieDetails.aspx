<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MovieDetails.aspx.vb" Inherits="admin_RecordDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
      <div class="col-md-12">
    <asp:DetailsView GridLines="None" CssClass="table table-hover" ID="DetailsView1" runat="server"  AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Starring" HeaderText="Starring" SortExpression="Starring" />
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="YearReleased" HeaderText="YearReleased" SortExpression="YearReleased" />
        <asp:BoundField DataField="Minutes" HeaderText="Minutes" SortExpression="Minutes" />
    </Fields>
</asp:DetailsView>
          </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ID, Name, Starring, Genre, YearReleased, Minutes FROM [Records] WHERE (ID = @ID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

