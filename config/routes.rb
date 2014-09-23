Prelaunch::Engine.routes.draw do
  resources :subscribers, only: [:new, :create]
  root 'subscribers#new'
end
