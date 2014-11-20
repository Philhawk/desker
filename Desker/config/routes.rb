# == Route Map
#
#        Prefix Verb   URI Pattern               Controller#Action
#         desks GET    /desks(.:format)          desks#index
#               POST   /desks(.:format)          desks#create
#      new_desk GET    /desks/new(.:format)      desks#new
#     edit_desk GET    /desks/:id/edit(.:format) desks#edit
#          desk GET    /desks/:id(.:format)      desks#show
#               PATCH  /desks/:id(.:format)      desks#update
#               PUT    /desks/:id(.:format)      desks#update
#               DELETE /desks/:id(.:format)      desks#destroy
#          root GET    /                         pages#index
#   pages_about GET    /pages/about(.:format)    pages#about
# pages_contact GET    /pages/contact(.:format)  pages#contact
#

Rails.application.routes.draw do
  
  resources :desks

  root :to => "desks#index"

  get 'pages/about'

  get 'pages/contact'

end
