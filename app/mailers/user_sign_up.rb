class UserSignUp < ActionMailer::Base

	def user_created(user)
			@user = user
		
		mail(
					 to:user.email,
				   from:"sumeet.masih123@gmail.com",
				subject:"Pandit Ji-Team"
				   
		)
	end	

end	