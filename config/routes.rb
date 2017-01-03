Rails.application.routes.draw do
  get 'welcome/index'
  get '/login'


  resources :users, :questions, :answers, :comments

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
