Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # added automatically at 'rails generate devise user'
  devise_for :users

  root to: "home#index"

end
