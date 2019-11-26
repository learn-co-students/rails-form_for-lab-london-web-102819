Rails.application.routes.draw do
 

  resources :school_classes [:new, :update, :new :create, :show, :edit]
  resources :students [:new, :update, :new :create, :show, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
