<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CheckAvailability_CL.aspx.cs" Inherits="CheckAvailability2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <section class="specialties" id="specialties">
         <div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2> Check Room Availability</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
		<div class="container w960">
      <div class="row">
		 <center>
           
         <table style="margin-bottom: 0px">   
         <tr> 
            <td style="width: 217px; height: 179px;">Check-In Date</td>
             <td style="height: 179px"><asp:TextBox Id="TextBox1" runat="server" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" ></asp:TextBox></td>
                               <td style="height: 179px"> <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">select</asp:LinkButton></td>
              <td style="height: 179px"><asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar></td>                                   
         </tr>
         <tr> 
                      <td style="width: 217px">Check-Out Date</td>
               <td><asp:TextBox Id="TextBox2" runat="server" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;"></asp:TextBox></td>
                   <td> <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">select</asp:LinkButton></td>
              <td><asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar></td>                                          
         </tr>
         <tr>
             <td style="width: 217px; height: 80px;">Room Category</td>
             <td style="height: 80px"><asp:DropDownList ID="DropDownList1" class="contact col-md-6" style="height:44px; width:185px; top: 1px;" runat="server" DataSourceID="SqlDataSource1" DataTextField="roomType" DataValueField="roomType" ></asp:DropDownList></td>
                <td style="height: 80px"><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1776136ConnectionString %>" SelectCommand="SELECT  Distinct([roomType]) FROM [rooms] where availability='Yes';"></asp:SqlDataSource></td>
         </tr>  
         <tr>   
             <td style="width: 217px; height: 67px;">Number Of Adults</td>
             <td style="width: 100px; height: 67px;"><asp:DropDownList ID="NoOfAdults" runat="server" Height="44px" Width="91px">
                 <asp:ListItem>1</asp:ListItem>
                 <asp:ListItem>2</asp:ListItem>
                 <asp:ListItem>3</asp:ListItem>
                 <asp:ListItem>4</asp:ListItem>
                 <asp:ListItem>5</asp:ListItem>
                 <asp:ListItem>6</asp:ListItem>
                 </asp:DropDownList>
             </td>
          </tr>
          <tr>
             <td style="width: 217px; height: 73px;">Number Of Kids</td>
            <td style="width: 150px; height: 73px;"> <asp:DropDownList ID="NoOfKids"  runat="server" Height="44px" Width="82px" style="margin-bottom: 0">
                 <asp:ListItem>0</asp:ListItem>
                 <asp:ListItem>1</asp:ListItem>
                 <asp:ListItem>2</asp:ListItem>
                 <asp:ListItem>3</asp:ListItem>
                 <asp:ListItem>4</asp:ListItem>
                 </asp:DropDownList>
             </td>
                </tr>
                <tr>
                    <td style="width: 217px; height: 87px;">Number Of Days</td>

             <td style="height: 87px">
                <asp:TextBox ID="Days" runat="server" TabIndex="6" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;"></asp:TextBox>
               </td>
                    </tr> 
                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="9pt" Text="(Days)"
                        Width="47px" TabIndex="43" ForeColor="Black"></asp:Label> 
                         <p><asp:Label ID="Label1" runat="server" Text="Label"  Font-Bold="True" Font-Size="9pt" 
                        Width="47px" TabIndex="43" ForeColor="Black"></asp:Label></p>

             </td>
                  
      </table>
               <asp:Button ID="Button3" runat="server" class="contact submit" Text="Book" OnClick="Button3_Click" />
             </div>
            </center>
</asp:Content>


