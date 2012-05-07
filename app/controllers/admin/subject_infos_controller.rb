class Admin::SubjectInfosController  < Admin::BaseController
  before_filter :authenticate_admin!, :except => []
  def index
      @subject_infos = SubjectInfo.all
    end

    def new
      @subject_info = SubjectInfo.new
    end

    def create
      @subject_info = SubjectInfo.new(params[:subject_info])
      if @subject_info.save
        flash[:notice] = "Subjectinfos created successfully"
        redirect_to admin_subject_infos_path
      else
        render :new
      end
    end
    
    def edit
      @subject_info = SubjectInfo.find(params[:id])
    end

    def update
      @subject_info = SubjectInfo.find(params[:id])
      if @subject_info.update_attributes(params[:subject_info])
        flash[:notice] = "subjectinfos saved successfully"
        redirect_to admin_subject_infos_path
      else
        render :new
      end
end


    def destroy
      @subject_info = SubjectInfo.find(params[:id])
     
      if @subject_info.destroy
        flash[:notice] = "Subject deleted successfully"
        redirect_to admin_subject_infos_path
      end
      
    end
end
