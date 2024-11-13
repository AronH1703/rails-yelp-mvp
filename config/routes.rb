Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

# Explanation of Routes

# View All Restaurants:
# Path: GET "restaurants"
# Action: index
# Controller: RestaurantsController#index

# <---------------------------------------->

# Add a New Restaurant:
# Form Path: GET "restaurants/new"
# Action: new (displays a form to create a restaurant)
# Submit Path: POST "restaurants"
# Action: create (saves the new restaurant and redirects to show)

# <---------------------------------------->

# View a Single Restaurant:
# Path: GET "restaurants/:id"
# Action: show (displays restaurant details and associated reviews)
# Controller: RestaurantsController#show
# Add a New Review to a Restaurant:

# <---------------------------------------->

# Form Path: GET "restaurants/:restaurant_id/reviews/new"
# Action: new in ReviewsController (displays a form to add a review)
# Submit Path: POST "restaurants/:restaurant_id/reviews"
# Action: create in ReviewsController (saves the new review and redirects)


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
