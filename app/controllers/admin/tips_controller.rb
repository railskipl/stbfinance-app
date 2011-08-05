class Admin::TipsController < Admin::BaseController
  
  before_filter :authenticate_admin!, :except => []
  
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(params[:tip])
    if @tip.save
      flash[:notice] = "Tip created successfully"
      redirect_to admin_tips_path
    else
      render :new
    end
  end
  
  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    @tip = Tip.find(params[:id])
    if @tip.update_attributes(params[:tip])
      flash[:notice] = "Tip saved successfully"
      redirect_to admin_tips_path
    else
      render :new
    end
  end
  

  def destroy
    @tip = Tip.find(params[:id])
   
    if @tip.destroy
      flash[:notice] = "Tip deleted successfully"
      redirect_to admin_tips_path
    end
    
  end
  
  def show
    @tip = Tip.find(params[:id])
    
    respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @tip }
        end
        
  end
  
end
