Rails.application.routes.draw do
# http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about', to: 'pages#about'

resources :articles

end
