Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :stories
  
  # /@ymp413/文章標題
  get '@:username/:story_id', to: 'pages#show', as: 'story_page'

  # /@ymp413/
  get '@:username', to: 'pages#user', as: 'user_page'

  get '/demo', to: 'pages#demo'

  root 'pages#index'
end
