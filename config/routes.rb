Rails.application.routes.draw do
  
  root 'consultations#new'
  get 'result', to: 'consultations#result'
  get 'show', to: 'consultations#show'
  resources :consultations
end
