class PagesController < ApplicationController
  
  def show
    @page = Page.find(params[:id]) 
    
    @title = "#{@page.title}"
    @meta_title = "STB Finance Service - #{@page.title}"
    @meta_keywords = "#{@page.keyword}"
    @meta_description = "#{@page.meta_description}"
  end
  
end
