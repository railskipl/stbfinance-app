class NotificationsController < ApplicationController
  
  def index
    @notifications = Notification.find(:all, :order => 'id desc').paginate(:per_page => 6, :page => params[:page])
  end
  
  def show
    @notification = Notification.find(params[:id])
  end
  
end
