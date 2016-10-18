<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="EmployeeInfo_Admin.aspx.cs" Inherits="EmployeeInfo_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <center>

    <asp:GridView ID="EmpInfo" runat="server" AutoGenerateColumns="False" CellPadding="3" OnRowCancelingEdit="EmpInfo_RowCancelingEdit"   style="margin-top:100px" OnRowEditing="EmpInfo_RowEditing" OnRowUpdating="EmpInfo_RowUpdating" Width="1555px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GridLines="None" Height="1192px" AllowPaging="True" AllowSorting="True" PageSize="14">
              <AlternatingRowStyle BackColor="#CCCCCC" />
              <Columns>
            
                  
                  <asp:TemplateField HeaderText="Employee ID">  
                    <ItemTemplate>  
                        <asp:Label ID="emp_id" runat="server" Text='<%#Eval("emp_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 



                   <asp:TemplateField HeaderText="Department ID">  
                    <ItemTemplate>  
                        <asp:Label ID="dept_id" runat="server" Text='<%#Eval("dept_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  



                   <asp:TemplateField HeaderText="Department Name">  
                    <ItemTemplate>  
                        <asp:Label ID="dept_name" runat="server" Text='<%#Eval("dept_name") %>'></asp:Label>  
                    </ItemTemplate> 
                       
                        
                        <EditItemTemplate>  
                        <asp:TextBox ID="dept_name1" runat="server" Text='<%#Eval("dept_name") %>'></asp:TextBox>  
                    </EditItemTemplate>  

                </asp:TemplateField> 



                    <asp:TemplateField HeaderText="First Name">  
                    <ItemTemplate>  
                        <asp:Label ID="emp_fname" runat="server" Text='<%#Eval("emp_fname") %>'></asp:Label>  
  
                    </ItemTemplate>  
                                        </asp:TemplateField> 



                            <asp:TemplateField HeaderText="Last Name">  
                    <ItemTemplate>  
                        <asp:Label ID="emp_lname" runat="server" Text='<%#Eval("emp_lname") %>'></asp:Label>  
  
                    </ItemTemplate>  
                </asp:TemplateField> 


                            <asp:TemplateField HeaderText="Date of Joining">  
                    <ItemTemplate>  
                        <asp:Label ID="emp_doj" runat="server" Text='<%#Eval("emp_doj") %>'></asp:Label>  
  
                    </ItemTemplate>  
                </asp:TemplateField> 



                                    <asp:TemplateField HeaderText="Phone">  
                    <ItemTemplate>  
                        <asp:Label ID="emp_phone" runat="server" Text='<%#Eval("emp_phone") %>'></asp:Label>  
  
                    </ItemTemplate>  
                                                        </asp:TemplateField> 

                    <asp:TemplateField HeaderText="Salary">  
                    <ItemTemplate>  
                        <asp:Label ID="salary" runat="server" Text='<%#Eval("salary") %>'></asp:Label>  
                    </ItemTemplate>  
                        <EditItemTemplate>  
                        <asp:TextBox ID="salary1" runat="server" Text='<%#Eval("salary") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 

                   
                  
                
               
                        
                  <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" class="contact submit"  Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" class="contact submit"  Text="Update" CommandName="Update"/>  
                 
                        <asp:Button ID="btn_Cancel" runat="server" class="contact submit" Text="Cancel " CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>

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
</asp:Content>


