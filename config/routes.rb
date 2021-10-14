Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants do
  end

  # If inside the block, this means that it is a NESTED resource
  # Which means:
  # It starts with parent_resources/:parent_resources_id/the-normal-route
  # /restaurants/:restaurant_id/reviews
  resources :reviews, only: [:index, :create]
end
