Rails.application.routes.draw do
  namespace 'api' do

    resources :usuario
    post '/usuario/login', to: 'usuario#login'

    resources :moto
    post '/moto/obterEstoqueMoto', to: 'moto#obter_estoque_moto'
  end
end
