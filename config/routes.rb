Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reports do
  end
  resources :formulations do
  end
  resources :ingredients do
  end
end
