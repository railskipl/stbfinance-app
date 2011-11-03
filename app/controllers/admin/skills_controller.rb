class Admin::SkillsController < Admin::BaseController
  
  
  
  def index
    @skills = Skill.find(:all, :order => 'id desc')
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(params[:skill])
    if @skill.save
      flash[:notice] = "Skill created successfully"
      redirect_to admin_skills_path
    else
      render :new
    end
  end
  
  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(params[:skill])
      flash[:notice] = "Skill saved successfully"
      redirect_to admin_skills_path
    else
      render :new
    end
  end
  

  def destroy
    @skill = Skill.find(params[:id])
   
    if @skill.destroy
      flash[:notice] = "Skill deleted successfully"
      redirect_to admin_skills_path
    end
    
  end
  
end
