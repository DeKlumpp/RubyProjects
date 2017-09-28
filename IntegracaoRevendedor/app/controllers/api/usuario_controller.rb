module Api
    class UsuarioController < ApplicationController

        require 'json'
        respond_to :json

        def login

            begin
                @usuario = Usuario.where(EMAIL: params[:usuario][:email], FL_ATIVO: 1).select("ID, EMAIL, CAST(DECODE(SENHA, 'vm0t045g343nc14d04') AS CHAR) as SENHA").first

                if @usuario.SENHA == params[:usuario][:senha]
                    token = gerar_token

                    validar = Validar_TokenController.criar(params[:usuario][:cnpj], token, params[:usuario][:email])

                    render json: { token: token, codigo: 500 }
                else
                    render json: { mensagem: "Senha inválida.", codigo: 400 }
                end
            rescue => error
                #render json: { Mensagem: $!.message}
                render json: { mensagem: "Usuário inválido.", codigo: 400 }
            end
        end

        private
        def gerar_token
            loop  do
                token = SecureRandom.hex
                return token
            end
        end
    end
end
