Rails.application.routes.draw do
  root 'welcome#index'
  mount Waitlist::Engine => "/waitlist", as: "waitlist"
end
