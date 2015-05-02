Rails.application.routes.draw do
  root :to => "concerts#index"
  resources :concerts
  get 'articles/:id/like', to: 'articles#like'

end
