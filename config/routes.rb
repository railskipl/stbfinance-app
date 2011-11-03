Stbfinance::Application.routes.draw do |map|
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  devise_for :users, :path_names => { :sign_up => "register", :sign_in =>"login"}
  
  

  resources :tips
  resources :notifications
  
  map.connect '/contacts', :controller=>'home', :action=>'contact'
  map.connect '/pages/:id', :controller=>'pages', :action=>'show'
  map.connect '/admin/pages/:id/delete', :controller=>'admin/pages', :action=>'destroy'
  map.connect '/admin/tips/:id/delete', :controller=>'admin/tips', :action=>'destroy'
  map.connect '/admin/notifications/:id/delete', :controller=>'admin/notifications', :action=>'destroy'
  map.connect '/admin/contacts/:id/delete', :controller=>'admin/contacts', :action=>'destroy'
  
  map.connect 'ckeditor/images', :controller => 'ckeditor', :action => 'images'
  map.connect 'ckeditor/files', :controller => 'ckeditor', :action => 'files'
  map.connect 'ckeditor/create/:kind', :controller => 'ckeditor', :action => 'create'
  
  # Administration
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
     
     resources :pages 
     resources :tips
     resources :notifications
     resources :contacts 
     resources :banners 
  end
  
  root :to => "home#index"
  
end
