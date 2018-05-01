class GossipsController < ApplicationController
  def index

  	@gossip = Gossip.all

  end

  def new
  	@gossip = Gossip.new
  	 	
  end

  def create
  	@gossip = Gossip.new(anonymous_author: params[:anonymous_author], content: params[:content])
     
      @gossip.save 
       # redirect_to post_gossips_path(@gossip.id)   
 end
    



  def show
  	@gossip = Gossip.find(params[:id])

  end


  def edit
  	@gossip = Gossip.find(params[:id])
  end

  def update

  	@gossip = Gossip.find(params[:id])
  	@gossip.update(params[:gossip])
  end

  def destroy

 @gossip = Gossip.find(params[:id]).delete
redirect_to root_path

  end




end
