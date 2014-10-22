<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registracija.aspx.cs" Inherits="movies_web.registracija" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

     <div class="main">
 	<div class="wrap">
     <div class="content">
     	
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>Registracija korisnika</h2>
					    	<div>
                                <span><asp:Label ID="lblIme" runat="server" Text="Ime"></asp:Label></span>
						    	<span><asp:TextBox ID="txtIme" runat="server" Placeholder="Ime" Width="300px"></asp:TextBox></span>
						    </div>
                             <div>
                                <span><asp:Label ID="lblPrezime" runat="server" Text="Prezime"></asp:Label></span>
						    	<span><asp:TextBox ID="txtPrezime" runat="server" Placeholder="Prezime" Width="300px"></asp:TextBox></span>
						    </div>
                             <div>
                                <span><asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label></span>
						    	<span><asp:TextBox ID="txtEmail" runat="server" Placeholder="E-mail" Width="300px"></asp:TextBox></span>
						    </div>
						    <div>
                                <span><asp:Label ID="lblKorisnickoIme" runat="server" Text="Korisničko ime"></asp:Label></span>
						    	<span><asp:TextBox ID="txtKorisnickoIme" runat="server" Placeholder="Korisničko ime" Width="300px"></asp:TextBox></span>
						    </div>
                             <div>
                                <span><asp:Label ID="lblLozinka" runat="server" Text="Lozinka"></asp:Label></span>
						    	<span><asp:TextBox ID="txtLozinka" runat="server" Placeholder="Lozinka" Width="300px"></asp:TextBox></span>
						    </div>
                             <div>
                                <span><asp:Label ID="lblPotvrdaLozinke" runat="server" Text="Potvrda lozinke"></asp:Label></span>
						    	<span><asp:TextBox ID="txtPotvrdaLozinke" runat="server" Placeholder="Potvrda lozinke" Width="300px"></asp:TextBox></span>
						    </div>
						   <div>
                                <span><asp:Button ID="btnPotvrdi" runat="server" CssClass="mybutton" Text="Potvrdi" OnClick="btnPotvrdi_Click" style="position:initial" /></span>
						  </div>
				  </div>
  				</div>
				<div class="col span_1_of_3">
					
      			<div class="company_address">
				     	<h2>Informacije :</h2>
						    	<p>Online shop filmova "Trailer"</p>
						   		<p>Maršala Tita 12</p>
						   		<p>88000 Mostar</p>
				   		<p>Telefon: +38761123456</p>
				   		<p>Fax: +38761123456</p>
				 	 	<p>E-mail: <span><a href="#">info@trailershop.ba</a></span></p>
				   		</div>
				 </div>
			  </div>		
         </div> 
    </div>
 </div>

</asp:Content>
