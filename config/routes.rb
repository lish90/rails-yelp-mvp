Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end

# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   namespace :admin do
#     resources :restaurants, only: [:index, :create, :show, :reviews]
#     resources :reviews, only: [:create, :show]
#   end
# end