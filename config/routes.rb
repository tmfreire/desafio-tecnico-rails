Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "bugs#index"

  resources :bugs do
    resources :categories
  end
end
