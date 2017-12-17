Rails.application.routes.draw do
  get '/tasks' => "tasks#index"
  get '/tasks/:id' => 'tasks#show'
end
