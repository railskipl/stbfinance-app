class Admin::AnnouncementsController < Admin::BaseController

  before_filter :authenticate_admin!, :except => []
 
  def index
      @announcements = Announcement.all
    end

    def new
      @announcement = Announcement.new
    end

    def create
      @announcement = Announcement.new(params[:announcement])
      if @announcement.save
        flash[:notice] = "Announcements created successfully"
        redirect_to admin_announcements_path
      else
        render :new
      end
    end
    
    def edit
      @announcement = Announcement.find(params[:id])
    end

    def update
      @announcement = Announcement.find(params[:id])
      if @announcement.update_attributes(params[:announcement])
        flash[:notice] = "Announcement saved successfully"
        redirect_to admin_announcements_path
      else
        render :new
      end
end


    def destroy
      @announcement = Announcement.find(params[:id])
     
      if @announcement.destroy
        flash[:notice] = "Announcement deleted successfully"
        redirect_to admin_announcements_path
      end
      
    end

end
