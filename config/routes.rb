Stbfinance::Application.routes.draw do |map|
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  devise_for :users, :path_names => { :sign_up => "register", :sign_in =>"login"}
  
  

  resources :tips
  
  map.connect '/contacts', :controller=>'home', :action=>'contact'
  map.connect '/pages/:id', :controller=>'pages', :action=>'show'
  map.connect '/admin/pages/:id/delete', :controller=>'admin/pages', :action=>'destroy'
  map.connect '/admin/tips/:id/delete', :controller=>'admin/tips', :action=>'destroy'
  
  # Administration
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
     
     resources :pages 
     resources :tips
     
  end
  
  root :to => "home#index"
  
end
