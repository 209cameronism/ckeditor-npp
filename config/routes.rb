Ckeditor::Engine.routes.draw do
  resources :pictures, only: [:index, :create, :download, :destroy]
  resources :attachment_files, only: [:index, :create, :destroy]
  
  match "/uploads/ckeditor/picture/data/:id/:basename.:extension", :controller => "pictures", :action => "download", via: :get
end
