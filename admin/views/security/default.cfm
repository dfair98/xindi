<cfoutput>
	<div class="page-header hide"><h1>Login</h1></div>

	<form action="#buildURL( 'security/login' )#" method="post" class="form-horizontal" id="login-form">
	    <fieldset>
	        <legend>Login Form</legend>
			
			#view( "helpers/messages" )#
			
			<div class="control-group <cfif rc.result.hasErrors( 'username' )>error</cfif>">
				<label class="control-label" for="username">Email or Username</label>
				<div class="controls">
					<input class="input-xlarge" type="text" name="username" id="username">
					#view( "helpers/failures", { property="username" })#
				</div>
			</div>
			
			<div class="control-group <cfif rc.result.hasErrors( 'password' )>error</cfif>">
				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<input class="input-xlarge" type="password" name="password" id="password">
					#view( "helpers/failures", { property="password" })#
					<p class="help-block"><a href="#buildURL( 'security/password' )#">Forgotten your password?</a></p>
				</div>
			</div>
			
			<div class="form-actions">
				<input type="submit" name="login" id="login" value="Login" class="btn btn-primary">
			</div>
		</fieldset>
	</form>
	
	#rc.Validator.getInitializationScript()#

	#rc.Validator.getValidationScript( formName="login-form", context="login" )#
</cfoutput>