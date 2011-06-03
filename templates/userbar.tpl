	<section class="UserBar">
		<div class="Size">
			<div id="LoginForm">
				<form method="post" accept-charset="utf-8" action="?page=Login">
					<div class="Wrap">
						<ul>
							<li><label for="Username">{lang=com.sbb.login.username}:</label></li>
							<li><input type="text" name="Username" id="Username" placeholder="{lang=com.sbb.login.username}" required></li>
							<div style="clear:both;"></div>
						</ul>
						<ul>
							<li><label for="Password">{lang=com.sbb.login.password}:</label></li>
							<li><input type="Password" name="Password" id="Password" placeholder="{lang=com.sbb.login.password}" required></li>
							<div style="clear:both;"></div>
						</ul>
						
						<div class="LoginFormMethode">
							<ul>
								<li><label for="RegisterMe"><input type="radio" value="1" name="Register" id="RegisterMe"> {lang=com.sbb.register.register}</label></li>
								<li><label for="LogMeIn"><input type="radio" value="0" name="register" id="LogMeIn" checked> {lang=com.sbb.login.login}</label></li>
							</ul>
						</div>
						
						<div class="LoginFormSubmit">
							<ul>
								<li><input type="submit" name="SubmitLogin" id="SubmitLogin" value="{lang=com.sbb.form.submit}"></li>
								<li><label for="StayLoggedIn"><input type="checkbox" name="StayLoggedIn" id="StayLoggedIn"> {lang=com.sbb.login.stay}</label></li>
								<div style="clear:both;"></div>
							</ul>
						</div>
					</div>
				</form>
			</div>
			<div id="LoginBarHandle">
				<div id="LoginBarToogle">{lang=com.sbb.login.bar_handle}</div>
			</div>
		</div>
	</section>