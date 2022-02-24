Rails.application.routes.draw do
  namespace :admin do
    get :dashboard, to: "pages#dashboard", as: :pages_dashboard
    get :payment_histories, to: "pages#payment_histories"
  end

  devise_for :users

  get :dashboard, to: "home#dashboard", as: :dashboard
  root "home#welcome"
end
