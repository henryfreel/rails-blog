Rails.application.routes.draw do
  
  get 'users/new'

  get 'users/create'

  get 'users/show'

  root "pages#index"

  # users routes
  # get "/signup", to: "users#new"
  # get "/profile", to: "users#show"

  # sessions routes
  # get "/login", to: "sessions#new"
  # get "/logout", to: "sessions#destroy"
  # resources :sessions, only: [:create]

  # blog post routes
  resources :posts

  resources :users, only: [:new, :create, :show]

end

#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         pages#index
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
#     users POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
#      user GET    /users/:id(.:format)      users#show
#      DELETE /posts/:id(.:format)      posts#destroy



