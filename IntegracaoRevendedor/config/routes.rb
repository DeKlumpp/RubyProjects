Rails.application.routes.draw do
  namespace 'api' do
    resources :usuario
    post '/usuario/login', to: 'usuario#login'
   #get '/usuario/show', to: 'usuario#show'
  end
end
