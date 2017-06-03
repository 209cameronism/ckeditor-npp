Ckeditor::Engine.routes.draw do
  resources :pictures, only: [:index, :create, :download, :destroy]
  resources :attachment_files, only: [:index, :create, :download_ck_att, :destroy]
  
  match "/uploads/ckeditor/picture/data/:id/:basename.:extension", :controller => "pictures", :action => "download", via: :get
  match "/uploads/ckeditor/picture/data/:id/:basename.:extension", :controller => "attachments", :action => "download_ck_att", via: :get

end
