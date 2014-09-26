Rails.application.routes.draw do
  root 'welcome#index'
  mount Prelaunch::Engine => "/prelaunch", as: "prelaunch"
end
