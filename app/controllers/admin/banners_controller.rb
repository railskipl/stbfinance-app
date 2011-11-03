class Admin::BannersController < Admin::BaseController
  
  before_filter :authenticate_admin!, :except => []
  
  def index
    
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new(params[:banner])
    if @banner.save
      flash[:notice] = "Banner created successfully"
      redirect_to admin_banners_path
    else
      render :new
    end
  end
  
  def edit
    @banner = Banner.find(params[:id])
  end

  def update
    @banner = Banner.find(params[:id])
    if @banner.update_attributes(params[:banner])
      flash[:notice] = "Banner saved successfully"
      redirect_to admin_banners_path
    else
      render :new
    end
  end
  

  def destroy
    @banner = Banner.find(params[:id])
   
    if @banner.destroy
      flash[:notice] = "Banner deleted successfully"
      redirect_to admin_banners_path
    end
    
  end
  
end
