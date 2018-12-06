Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    # get"/events" => "events#index"
    # post"/events" => "events#create"
    # get"/events/:id" => "events#show"
    # patch"/events/:id" => "events#update"
    # delete"/events/:id" => "events#destroy"

    # get"/venues" => "venues#index"
    # post"/venues" => "venues#create"
    # get"/venues/:id" => "venues#show"
    # patch"/venues/:id" => "venues#update"
    # delete"/venues/:id" => "venues#destroy"
    
    # get"/tickets" => "tickets#index"
    # post"/tickets" => "tickets#create"
    # get"/tickets/:id" => "tickets#show"
    # patch"/tickets/:id" => "tickets#update"
    # delete"/tickets/:id" => "tickets#destroy"

    post"/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
