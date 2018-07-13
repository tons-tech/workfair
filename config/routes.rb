Rails.application.routes.draw do

  get '/profile' => 'users#profile'
  post '/login' => 'users#login'
  post 'user_token' => 'user_token#create'
  get '/test' => 'users#test'

  post '/sign_up' => 'users#sign_up'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
