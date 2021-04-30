<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="ETicaret.Giris.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/login.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    
    <title>My Awesome Login Page</title>
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
					<!--	<input type="text" class="form-control" placeholder="e-mail" /> -->
                        <asp:TextBox ID="Adiniz" runat="server" class="form-control" placeholder="Adınız " ></asp:TextBox>
					</div>
                <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
					<!--	<input type="text" class="form-control" placeholder="e-mail" /> -->
                        <asp:TextBox ID="Soyadiniz" runat="server" class="form-control" placeholder="Soyadınız " ></asp:TextBox>
					</div>
                <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-envelope"></i></span>
						</div>
					<!--	<input type="text" class="form-control" placeholder="e-mail" /> -->
                        <asp:TextBox ID="mailOlusturma" runat="server" class="form-control" placeholder="E-mail " ></asp:TextBox>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
                        <asp:TextBox ID="sifreOlusturma" runat="server"  class="form-control" placeholder="şifre" TextMode="Password"></asp:TextBox>
					<!--	<input type="password" class="form-control" placeholder="şifre" />-->
					</div>
                

					<div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Kaydol" class="btn float-right login_btn" OnClick="Button1_Click" />
						<!--<input type="submit" value="Kaydol" class="btn float-right login_btn"/> -->
					</div>
				<br />
                <asp:Label ID="Mesaj" runat="server" ForeColor="#FFC312"></asp:Label>
			</div>
		</div>
	</div>
</div>
    </form>
</body>
   <!-- <script >
     //   const form = document.querySelector("#form1");
        const UAdi = document.querySelector("#Adiniz");
        const USoyadi = document.querySelector("#soyadiniz");
        const UMail = document.querySelector("#mailOlusturma");
        const USifre = document.querySelector("#sifreOlusturma");
        const Ekle = document.querySelector(".card-body");
        eventListeners();

        function eventListeners() {
            Ekle.addEventListener("submit", AddUser);
        }
        function AddUser(e) {
            if (UAdi.value.trim() === "" || USoyadi.value.trim() === "" || UMail.value.trim() === "" || USifre.value.trim() === "") {
                showAlert("danger", "Eksik bilgi girdiniz..");
            }
            else {
                showAlert("success", "Kayıt Başarılı");
            }
            e.preventDefault();
        }
        function showAlert(type,message) {
            const alert = document.createElement("div");
            alert.className = `alert alert-${type}`;
            alert.textContent = message;
            Ekle.appendChild(alert);
            setTimeout(function () {
                alert.remove();
            }, 2000);
        }

    </script> -->
</html>
