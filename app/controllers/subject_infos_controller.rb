class SubjectInfosController < ApplicationController
 
  def show
    @subject_info = SubjectInfo.find(params[:id])
  end
  
end
