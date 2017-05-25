Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]
  resources :contacts, only: [ :new, :create]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  get 'about' => 'static_pages#about'
  get 'resume' => 'static_pages#resume'
  get 'contacts' => 'contacts#new'
end
