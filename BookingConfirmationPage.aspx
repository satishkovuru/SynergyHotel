<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BookingConfirmationPage.aspx.cs" Inherits="BookingConfirmationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2>Select Your Room</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
    <center>
    <div>
        
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowCancelingEdit="GridView1_RowCancelingEdit"   
  
OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1100px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black" GridLines="None" Height="297px">
              <Columns>
            
                  
                  <asp:TemplateField HeaderText="Booking ID">  
                    <ItemTemplate>  
                        <asp:Label ID="booking_id" runat="server" Text='<%#Eval("booking_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                    <asp:TemplateField HeaderText="Image">  
                    <ItemTemplate>  
                        <asp:Image ID="image" runat="server" style="width: 150px; height: 150px;    " AlternateText="Image Cover" ImageUrl='<%# Eval("image") %>' />
  
                    </ItemTemplate>  
                </asp:TemplateField> 
                    <asp:TemplateField HeaderText="Adults">  
                    <ItemTemplate>  
                        <asp:Label ID="noOfAdults" runat="server" Text='<%#Eval("numOfAdults") %>'></asp:Label>  
                    </ItemTemplate>  
                        <EditItemTemplate>  
                        <asp:TextBox ID="noOfAdults1" runat="server" Text='<%#Eval("numOfAdults") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

                    <asp:TemplateField HeaderText="Kids">  
                    <ItemTemplate>  
                        <asp:Label ID="noOfKids" runat="server" Text='<%#Eval("numOfKids") %>'></asp:Label>  
                    </ItemTemplate>  
                        <EditItemTemplate>  
                        <asp:TextBox ID="numOfKids1" runat="server" Text='<%#Eval("numOfKids") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 
                  
                    <asp:TemplateField HeaderText="Check In Date">  
                    <ItemTemplate>  
                        <asp:Label ID="startDate" runat="server" Text='<%#Eval("startDate") %>'></asp:Label>  
                    </ItemTemplate>  
                        <EditItemTemplate>  
                        <asp:TextBox ID="startDate1" runat="server" Text='<%#Eval("startDate") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

                    <asp:TemplateField HeaderText="Check Out Date">  
                    <ItemTemplate>  
                        <asp:Label ID="endDate" runat="server" Text='<%#Eval("endDate") %>'></asp:Label>  
                    </ItemTemplate>  
                        <EditItemTemplate>  
                        <asp:TextBox ID="endDate1" runat="server" Text='<%#Eval("endDate") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 
               
                        
                  <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" class="contact submit" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" class="contact submit" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" class="contact submit" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>

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

  

        
        <br />

  

        
        </div>
    </center>   
    </tr>
    <div>
        <center>
            <div id="cab services" style="margin-left: -420px;">
                <img id="image" alt="" src="Images/posche.jpg" style="width: 160px; height: 150px" />
                <div id="text1">
                    <asp:Label ID="Label9" runat="server" Text="Cab Services"></asp:Label>
                     <div id="button1">
                        <asp:Button runat="server" class="contact submit" OnClick="AvailCab_Services" Text="Book" ></asp:Button>
                        <asp:Button runat="server" class="contact submit" OnClick="PriceCalculation" Text="Skip" ID="Skip" ></asp:Button>
                    </div>
                </div>
            </div>
         
            <div id="swimming pool" style="margin-left: 545px; margin-top: -230px;">
                <img id="image0" alt="" src="Images/pool.jpg" style="width: 160px; height: 150px" />
                <div id="text2">
                    <asp:Label ID="Label12" runat="server" Text="SwimmingPool Services"></asp:Label>
                    <div id="button2">
                         <asp:Button runat="server" class="contact submit" OnClick="Pool_Services" Text="Book" ID="Button3" ></asp:Button>
                         <asp:Button runat="server" class="contact submit" OnClick="PriceCalculation1" Text="Skip" ID="Skip0" ></asp:Button>
                         <br />
                         <br />
                    </div>
                </div>
            </div>
            </center>
            </div>
    <center>
            <div id="cabs">
     <asp:Label id="pickup" runat="server" Text="PickUpPoint"></asp:Label>&nbsp;&nbsp; 
                <asp:DropDownList ID="pickup1" runat="server" Height="43px" Width="112px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Chicago Airport</asp:ListItem>
                    <asp:ListItem>Aurora</asp:ListItem>
                    <asp:ListItem>Naperville</asp:ListItem>
                    <asp:ListItem>Rockford</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:Button runat="server" class="contact submit" OnClick="PriceCalculation1" Text="Submit" ID="Button2" ></asp:Button>
</div>

            <br />
            <br />


            <br />
</center>
       </div>
   

  <div id="PriceCalculationOfRoom" runat="server">
      <center>
          <h3>Price Calculation</h3>
<table id="tab" runat="server" style="width: 371px; height: 282px">
    <tr>
        <td style="width: 159px"><asp:Label ID="Label1" runat="server" Text="Price of Room"></asp:Label></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
        <td style="width: 159px"><asp:Label ID="Label3" runat="server" Text="Cab Services"></asp:Label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
    </tr>
      <tr>
        <td style="width: 159px"><asp:Label ID="Label5" runat="server" Text="Extra Eminities"></asp:Label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
    </tr>
      <tr>
        <td style="width: 159px"><asp:Label ID="Label7" runat="server" Text="Tax(15%)"></asp:Label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
    </tr>
       <tr>
        <td style="width: 159px"><asp:Label ID="Label10" runat="server" Text="Total Amount"></asp:Label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
    </tr>
</table>
      </center>
      </div> 
    
    <div>
        <center>
            <br />
            <br />
        <asp:Button runat="server" class="contact submit" onCLick="Payment" Text="Payment" />
            </center>
    </div>          
   
   

</asp:Content>


