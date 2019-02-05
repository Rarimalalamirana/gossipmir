class HomeController < ApplicationController
	def acceuil
		@a=params[:user_entry]
		@gossip=Gossip.all
		@user =User.all
	end
  def team
  end

  def contact

  end
  def gossip
  	@m =params[:id]
  	@gossip=Gossip.all
  end
  def uri
  end
end
