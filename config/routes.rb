Rails.application.routes.draw do
  # resources :breweries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  post '/breweries', to: 'breweries#get_breweries'
 
end
