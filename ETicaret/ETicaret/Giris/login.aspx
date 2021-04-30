<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ETicaret.Giris.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/login.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    
    <title>E-Ticaret</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"/>

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
    <form id="form1" runat="server">

		<div class="container ">
	<div class="d-flex justify-content-center  h-100 ">
		<div class="card  align-self-center">
			<div class="card-header">
				<h3>Giriş Yap</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fas fa-store"></i></span>
				</div>
			</div>
			<div class="card-body">
			
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<asp:TextBox ID="email" runat="server" class="form-control" placeholder="e-mail" ></asp:TextBox>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<!--<input type="password" class="form-control" placeholder="şifre" /> -->
                        <asp:TextBox ID="sifre" runat="server" class="form-control" placeholder="şifre" TextMode="Password"></asp:TextBox>
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox"/>Beni Hatırla
					</div>
					<div class="form-group">
                        <asp:Button ID="submit" runat="server" Text="Giriş Yap" class="btn float-right login_btn" OnClick="submit_Click" />
						
					</div>
                <asp:Label ID="mesaj" runat="server" ForeColor="#FFC312"></asp:Label>
				</div>
            
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Hesabın yok mu? <a href="SignUp.aspx">Kaydol</a>
				</div>
			
			</div>
		
            
	</div>
        </div>
</div>
    </form>
</body>
</html>

