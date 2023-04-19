
<html>
<head>
<title>Sistema de Biblioteca</title>
<meta name="viewport" content="width=device-width" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
 <section class="vh-100" style="background-color:#9A616D ;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmVhZGluZyUyMGJvb2t8ZW58MHx8MHx8&w=1000&q=80"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">
              
              <div class="text-center text-success">
              	<h4>${mensagem_sucesso}</h4>
              </div>
               <div class="text-center text-danger">
              	<h4>${mensagem_erro}</h4>
              </div>
              

                <form method="post" action="cadastrar-usuario">

                  <h5 class="fw-normal mb-2 pb-3" style="letter-spacing: 1px;">Create your account</h5>
                  
                   <div class="form-outline mb-2">
                     	<label class="form-label">Name</label>
                     	
                   		<input 
                   		required="required"
                   		pattern="[A-Za-zÀ-Üà-ü\s]{8,150}"
                   		title="The name must be only with lether and space. must contain 8 e 150 characters."                   		
                   		name = "name_user" type="text" id="name" class="form-control" />
                  </div>

                  <div class="form-outline mb-2">
                  	<label class="form-label">Email</label>
                    <input required="required" name = "email_user" type="email" id="email" class="form-control" />
                  </div>

                  <div class="form-outline mb-2">
                  	<label class="form-label">Password</label>
                    <input name = "password_user" type="Password"
                    required="required"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}" 
       				title="the password must be at least 8 characters long, including at least one lowercase letter, one uppercase letter, one number, and one special character (!@#$%^&*)."
                     id="Password" class="form-control" />
                  </div>
					<div class="form-outline mb-2">
						<label>Are you employer?</label>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="user-yes-no" id="radio-yes" value="YES">
							<label class="form-check-label" for="radio-yes">Yes</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="user-yes-no" id="radio-no" value="NO">
							<label class="form-check-label" for="radio-no">No</label>
						</div>
					</div>
					<div class="form-outline mb-2" id="label-yes">
						<label for="input-yes">Enter with ID code:</label>
						<input type="text" class="form-control" id="input-yes" name="id_user">
					</div>


                  <div class="pt-1 mb-2">
                    <button class="btn btn-dark btn-lg btn-block" type="submit">Register</button>
                  </div>

                  <p class="mb-2" style="color: #393f81;">Have an account?
                   <a href="/sistema_de_gerenciamento_de_biblioteca/" style="color: #393f81;">
                  Click here
                  </a>
                  </p>                 
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- javascript Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
		$(document).ready(function(){
			// Esconde o label quando a página carrega
			$("#label-yes").hide();

			// Mostra ou esconde o label quando o select é alterado
			$("input[name='user-yes-no']").change(function(){
				if($(this).val() == "YES"){
					$("#label-yes").show();
				} else {
					$("#label-yes").hide();
				}
			});
		});
	</script>
</body>
</html>