Rails.application.routes.draw do
  resources :programs do
    resources :photos
  end
  devise_for :users
  root 'programs#index'
    delete 'delete_media', to: "programs#delete_media"
  delete 'delete_all', to: 'programs#delete_all'
    resources :photos, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
