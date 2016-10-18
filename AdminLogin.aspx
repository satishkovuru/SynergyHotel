<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section class="login" id="login">
         <div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2>Admin Log In</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
		<div class="container w960">
      <div class="row">
          <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
		 <center>
             <table>
                 <tr>
                     <td style="width: 150px">User Name</td>
                     <td> <asp:TextBox ID="UserName" runat="server" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;"></asp:TextBox></td>

                 </tr>
                 <tr>
             
                      <td style="width: 150px">Password</td>
                     <td style="width: 355px"> <asp:TextBox ID="Password" runat="server" type="password" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" ></asp:TextBox>&nbsp;</td>
                     </tr>
             </table>
             
             <br />
             <asp:Button ID="Button2" class="contact submit" runat="server" OnClick="Button2_Click" Text="Login" />
         </center>
      </div>
    </div>
	</div>

	</section>
</asp:Content>


