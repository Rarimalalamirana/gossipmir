class HomeController < ApplicationController
 


  def new
    @user = User.new
  end
  def create
 
   a = City.create(name:params[:city],zip_code:"0002030")
   #user =User.new(password:,first_name:,last_name:, email: , ,,city: a)
    @user=User.new(last_name:params[:last_name],first_name:params[:first_name],email:params[:email],password: params[:password],description:params[:description],age:params[:age],city: a)
puts "$$$$$$$$$$$"
puts @user#user=User.new(last_name:"mirana",first_name:"laigo",email:"laing@example.com",password:"mirana",city_id:1)
    puts "$$$$$$$$$" 
      if @user.valid?
        @user.save
        flash.now[:notice] = "you are on this application"
        redirect_to root_path
      else
        flash.now[:danger] ="ERREUR"
        render :new
      end
  end

end
#,city:,
