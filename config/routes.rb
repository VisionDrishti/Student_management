Rails.application.routes.draw do
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'students#index'


  # get '/students', to: 'students#index'
  # get'/students/form', to: 'students#form'

  resources :students
end 