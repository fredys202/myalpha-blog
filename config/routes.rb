Rails.application.routes.draw do
# http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact' 
  
resources :articles
  

get 'signup', to: 'users#new'  
resources :users, except:[:new]
  
  
get 'login', to: 'sessions#new'  
post 'login', to: 'sessions#create' 
delete 'logout', to: 'sessions#destroy'

end
