Ckeditor::Engine.routes.draw do
  resources :pictures, only: [:index, :create, :download, :destroy]
  resources :attachment_files, only: [:index, :create, :destroy]
end
