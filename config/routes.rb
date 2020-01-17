Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :new, :show, :edit, :update, :destroy, :create ]
  resources :episodes, only: [:index, :new, :show, :edit, :update, :destroy, :create ]
  resources :appearances, only: [:index, :new, :show, :edit, :update, :destroy, :create ]
end
