class TipsController < ApplicationController
  
  def show
    @tips = Tip.find(params[:id])
  end
  
end
