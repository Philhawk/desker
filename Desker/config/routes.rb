# == Route Map
#
#        Prefix Verb   URI Pattern                Controller#Action
#         users GET    /users(.:format)           users#index
#               POST   /users(.:format)           users#create
#      new_user GET    /users/new(.:format)       users#new
#     edit_user GET    /users/:id/edit(.:format)  users#edit
#          user GET    /users/:id(.:format)       users#show
#               PATCH  /users/:id(.:format)       users#update
#               PUT    /users/:id(.:format)       users#update
#               DELETE /users/:id(.:format)       users#destroy
#        venues GET    /venues(.:format)          venues#index
#               POST   /venues(.:format)          venues#create
#     new_venue GET    /venues/new(.:format)      venues#new
#    edit_venue GET    /venues/:id/edit(.:format) venues#edit
#         venue GET    /venues/:id(.:format)      venues#show
#               PATCH  /venues/:id(.:format)      venues#update
#               PUT    /venues/:id(.:format)      venues#update
#               DELETE /venues/:id(.:format)      venues#destroy
#         desks GET    /desks(.:format)           desks#index
#               POST   /desks(.:format)           desks#create
#      new_desk GET    /desks/new(.:format)       desks#new
#     edit_desk GET    /desks/:id/edit(.:format)  desks#edit
#          desk GET    /desks/:id(.:format)       desks#show
#               PATCH  /desks/:id(.:format)       desks#update
#               PUT    /desks/:id(.:format)       desks#update
#               DELETE /desks/:id(.:format)       desks#destroy
#          root GET    /                          desks#index
#   pages_about GET    /pages/about(.:format)     pages#about
# pages_contact GET    /pages/contact(.:format)   pages#contact
#

Rails.application.routes.draw do
  
  resources :users

  resources :venues

  resources :desks

  root :to => "desks#index"

  get 'pages/about'

  get 'pages/contact'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
