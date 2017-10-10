Rails.application.routes.draw do
  namespace 'api' do

    resources :usuario
    post '/usuario/login', to: 'usuario#login'

    resources :moto
    post '/moto/obterestoque', to: 'moto#obter_estoque_moto'
    post '/moto/obtermarca', to: 'moto#obter_marca'
    post '/moto/obtermodelo', to: 'moto#obter_modelo'
    post '/moto/obterversao', to: 'moto#obter_versao'
    post '/moto/obtercor', to: 'moto#obter_cor'
  end
end
