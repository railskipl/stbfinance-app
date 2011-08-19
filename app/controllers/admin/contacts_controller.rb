class Admin::ContactsController < Admin::BaseController
  
  before_filter :authenticate_admin!, :except => []
  
  def index
    @contacts = Contact.find(:all).paginate(:per_page => 10, :page => params[:page])
  end
  
  def show
    @contact = Contact.find(params[:id])
        
  end
  
  def destroy
    @contact = Contact.find(params[:id])
   
    if @contact.destroy
      flash[:notice] = "Contact deleted successfully"
      redirect_to admin_contacts_path
    end
  end
  
end
