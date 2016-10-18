<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="RoomAvailability_Admin.aspx.cs" Inherits="RoomAvailability_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<div>
    <center>


    <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="room_id" DataSourceID="SqlDataSource1" ForeColor="Black" style="margin-top:90px;" GridLines="None" Height="539px" Width="1335px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" PageSize="7">
        <Columns>
            <asp:BoundField DataField="room_id" HeaderText="Room Number" ReadOnly="True" SortExpression="room_id" />
            <asp:BoundField DataField="roomType" HeaderText="Room Type" SortExpression="roomType" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="availability" HeaderText="Availability" SortExpression="availability" />
             <asp:ImageField  DataImageUrlField="image" HeaderText="Image" ControlStyle-Width="200" ControlStyle-Height = "150" SortExpression="ProductImageThumb" >
<ControlStyle Height="200px" Width="250px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="roomDescription" HeaderText="Description" SortExpression="roomDescription" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1776136ConnectionString %>" SelectCommand="SELECT [room_id], [roomType], [price], [availability], [image], [roomDescription] FROM [rooms]"></asp:SqlDataSource>
    </center>
</div>
</asp:Content>

