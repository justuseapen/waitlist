Rails.application.routes.draw do
  mount Prelaunch::Engine => "/prelaunch", as: "prelaunch"
end
