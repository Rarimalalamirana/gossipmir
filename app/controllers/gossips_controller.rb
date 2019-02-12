
class GossipsController < ApplicationController
 
before_action:variabl  
def variabl
  @id = session[:user_id]
@us = User.find(@id)
end

def index
   
    @nom =@us.last_name
    @gossip=Gossip.all.reverse
    @user =User.all
  end

  def show
    @a =params[:id]
  @m =params[:id]
    @gossip=Gossip.find(@m)
    @city =City.all
  
   end

  def new
   @gossip = Gossip.new
  end

  def edit
@a =params[:id]
       @gossip = Gossip.all
        @gossip = Gossip.find(@a)
       @t=@gossip.title
       @c=@gossip.content
puts @t
puts @c 
 end

  def create
    user =User.find(session[:user_id])
  title =params[:title]
  content =params[:content]
  @gossip = Gossip.new(title: params[:title],content: params[:content],user:user) # avec xxx qui sont les données obtenues à partir du formulaire

     if @gossip.save # essaie de sauvegarder en base @gossip

    redirect_to gossip_path(@gossip.id)# si ça marche, il redirige vers la page d'index du site
     else
    render 'new'# sinon, il render la view new (qui est celle sur laquelle on est déjà)
     end
  end

  def update
  @gossip =Gossip.all
  @gossip = Gossip.find(params[:id])
   @gossip.update(title:params[:title],content:params[:content],id:params[:id])
    redirect_to gossip_path(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to '/gossips/index'
  end
   def user
    @u =params[:id]
    @user =User.find(@u)
  @city =@user.city
 
  end
  def city
    @a = params[:id]
    @city =City.find(@a)
    @z =User.where(city_id:@a).each do |n|
    end
  
  end

end