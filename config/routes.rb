Rails.application.routes.draw do

  resources :lines, :stations, :stops, :tables

end
