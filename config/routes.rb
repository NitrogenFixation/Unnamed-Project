Rails.application.routes.draw do
   root 'guests#index'
   get 'guestbook' => 'guests#guestbook'
   post 'guests' => 'guests#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
