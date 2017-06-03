Ckeditor::Engine.routes.draw do
  resources :pictures, only: [:index, :create, :download, :destroy]
  resources :attachment_files, only: [:index, :create, :download_ck_att, :destroy]
  
  match "/uploads/ckeditor/picture/data/:id/:basename.:extension", :controller => "pictures", :action => "download", via: :get
  match "/uploads/attachment_file/data/:id/:basename.:extension", :controller => "attachment_files", :action => "download_ck_att", via: :get

end
