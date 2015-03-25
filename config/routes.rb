Rails.application.routes.draw do
  
  root 'consultations#new'
  get 'result', to: 'consultations#result'
  resources :consultations
end
