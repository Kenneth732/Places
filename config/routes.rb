Rails.application.routes.draw do
  resources :photographers, only: [:index, :show, :create, :update, :destroy]
  resources :photos, only: [:index, :show, :create]
  get 'photos/:id/summary', to: 'photos#summary'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
