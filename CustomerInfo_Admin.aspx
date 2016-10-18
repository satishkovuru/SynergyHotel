<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="CustomerInfo_Admin.aspx.cs" Inherits="CustomerInfo_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<center>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cus_id,booking_id" style="margin-top:100px;" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" Height="913px" Width="1690px" AllowPaging="True" AllowSorting="True" PageSize="14">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="cus_id" HeaderText="Customer ID" InsertVisible="False" ReadOnly="True" SortExpression="cus_id" />
        <asp:BoundField DataField="booking_id" HeaderText="Booking ID" InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
        <asp:BoundField DataField="room_id" HeaderText="Room Number" SortExpression="room_id" />
        <asp:BoundField DataField="cus_fname" HeaderText="First Name" SortExpression="cus_fname" />
        <asp:BoundField DataField="cus_lname" HeaderText="Last Name" SortExpression="cus_lname" />
        <asp:BoundField DataField="startDate" HeaderText="Check In Date" SortExpression="startDate" />
        <asp:BoundField DataField="endDate" HeaderText="Check Out Date" SortExpression="endDate" />
        <asp:BoundField DataField="bookingDate" HeaderText="Booking Date" SortExpression="bookingDate" />
        <asp:BoundField DataField="cus_email" HeaderText="Email" SortExpression="cus_email" />
        <asp:BoundField DataField="cus_phone" HeaderText="Phone" SortExpression="cus_phone" />
        <asp:BoundField DataField="cus_address" HeaderText="Address" SortExpression="cus_address" />


    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1776136ConnectionString %>" SelectCommand="SELECT c.[cus_id], [booking_id],[room_id],  [cus_fname], [cus_lname], [startDate], [endDate], [bookingDate] ,[cus_email], [cus_phone], [cus_address] FROM [customers] c,[booking] b where c.cus_id=b.cus_id;
"></asp:SqlDataSource>
</asp:Content>

