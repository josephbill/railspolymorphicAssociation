Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles do
    resources :comments, only: [:index, :create], defaults: { commentable: 'articles' }
  end
  resources :photos do
    resources :comments, only: [:index, :create], defaults: { commentable: 'photos' }
  end
end
