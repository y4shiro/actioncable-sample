Rails.application.routes.draw do
  root 'chat#show'
  get 'chat/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
