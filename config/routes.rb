Ckeditor::Engine.routes.draw do
  resources :pictures, only: [:index, :create, :destroy]
  resources :attachment_files, only: [:index, :create, :destroy]
  
  match "/uploads/ckeditor/picture/data/:id/:basename.:extension", :controller => "pictures", :action => "download_ck_pic", via: :get
end
