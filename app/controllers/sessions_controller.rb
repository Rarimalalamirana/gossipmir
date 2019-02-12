class SessionsController < ApplicationController
	def new

	end
	def create
		 # cherche s'il existe un utilisateur en base avec l’e-mail
		 # email =params[:email]
		 # password =params[:password]
  user = User.find_by(email:params[:email])
  puts"$$$$$$$"
  puts params.inspect
  puts"$$$$$"

  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id

     redirect_to '/gossips/index'
    # redirige où tu veux, avec un flash ou pas

  else
    flash.now[:danger] = 'Invalid email/password combination'
    render '/sessions/new'
  end
	end 
	def destroy
      session.delete(@id)
          redirect_to root_path

	end
end
