Rails.application.routes.draw do

  resources :lines, :stations, :stops, :tables

  root :to => 'application#index'

end
