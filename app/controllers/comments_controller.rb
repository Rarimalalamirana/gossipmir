require 'faker'
class CommentsController < ApplicationController
  
  def index
  end

  def show
    @m =params[:id]
    @comment =Comment.find(@m)
  end

  def new
      @comment = Comment.new
  end

  def edit
    @a =params[:gossip_id]
       @comment =  Comment.all
        @comment =  Comment.find(@a)
      
       @c= @comment.content

puts @c 
  end

  def update
      @comment =Comment.all
  @comment = Comment.find(params[:gossip_id])
   @comment.update(content:params[:content],id:params[:gossip_id])
    redirect_to '/gossips/index'
  end

  def create
  content =params[:content]
  # user =params[:user]
  # @user =User.all
  #    m =@user.each do |x|
  #   a =[]
  #   a << x.last_name
  #   puts a
  #   if a.include?(params[:user])
  #   u =User.find_by(last_name:params[:user])
  # else
  #   u = User.create(first_name:params[:user],last_name: Faker::Name.last_name, email: Faker::Internet.email, age:Faker::Number.between(20,50),description: Faker::HarryPotter.quote)
  
  # end
    id = session[:user_id]
@us = User.find(id)
    @m =params[:gossip_id]
    @gossip=Gossip.find(@m)
  @comment = Comment.new(content:params[:content],user:@us,gossip:@gossip) # avec xxx qui sont les données obtenues à partir du formulaire

      @comment.save 

      # end # essaie de sauvegarder en base @gossip
    redirect_to gossip_path(@m)
  

  end

  def destroy
      
     @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(params[:gossip_id])
  end
end
