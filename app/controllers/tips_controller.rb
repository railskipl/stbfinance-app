class TipsController < ApplicationController
  
  def index
    @tips = Tip.find(:all).paginate(:per_page => 6, :page => params[:page])
  end
  
  def show
    @tips = Tip.find(params[:id])
  end
  
end
