module Api
    class MotoController < ApplicationController

        require 'json'
        respond_to :json


        def obter_estoque_moto
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(token_validado)
                render json: { mensagem: "Sucesso.",  codigo: 500 }
            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end
    end
end
