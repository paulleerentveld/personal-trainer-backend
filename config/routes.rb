Rails.application.routes.draw do
  resources :workouts
  resources :exercises
  resources :users
  resources :clientworkouts
  resources :exerciseworkouts

  get '/clients' => 'users#clients'
  get '/clients/:id' => 'users#show'
  post '/clients' => 'users#create'
  post '/exercises' => 'exercises#create'
  post '/workouts' => 'workouts#create'
  patch '/clients/:id' => 'users#update'
  patch '/exercises/:id' => 'exercises#update'
  patch '/workouts/:id' => 'workouts#update'
  put '/clients/:id' => 'users#update'
  delete '/clients/:id' => 'users#destroy'
  delete '/exercises/:id' => 'exercises#destroy'
  delete '/workouts/:id' => 'workouts#destroy'
  get '/trainers' => 'users#trainers'


  get 'search', to:"workouts#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
