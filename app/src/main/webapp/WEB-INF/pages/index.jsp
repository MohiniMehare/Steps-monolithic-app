<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="resources/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">


</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title" style="font-family: 'Great Vibes',">Sign
							in</h2>
						<form method="POST" class="register-form" id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<!-- <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div> -->
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Login" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="resources/images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="#" class="signup-image-link">I am already member</a>
					</div>
				</div>
			</div>
		</section>

		<!-- Sing in  Form -->


	</div>

	<!-- JS -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/main.js"></script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			const form = document.getElementById("register-form");

			form.addEventListener("submit", function(event) {
				event.preventDefault(); // prevent default form submission

				const email = document.getElementById("email").value.trim();
				const pass = document.getElementById("pass").value.trim();

				if (email === "steps@gmail.com" && pass === "1234") {
					window.location.href = "/app/form"; // adjust path based on your routing
				} else {
					alert("Invalid email or password!");
				}
			});
		});
	</script>

</body>
</html>