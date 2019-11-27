Rails.application.routes.draw do

  resources :students only: [:index, :show, :create, :update]
  resources :school_classes only: [:new, :create, :show, :edit, :update]

end
