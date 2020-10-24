Rails.application.routes.draw do

  resources :teas
  
  # home path goes to the welcome page
  get '/', to: 'application#home', as: 'home'

end
