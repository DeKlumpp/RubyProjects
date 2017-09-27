module Api
    class UsuarioController < ApplicationController

        require 'json'
        respond_to :json

        def login

            begin
                @usuario = Usuario.where(EMAIL: params[:usuario][:email], FL_ATIVO: 1).select("EMAIL, CAST(DECODE(SENHA, 'vm0t045g343nc14d04') AS CHAR) as SENHA").first

                if @usuario.SENHA == params[:usuario][:senha]
                    token = gerar_token

                    Validar_Token.validar(token, params[:usuario][:email]) and return

                    render json: { Hash_Autenticacao: token, Codigo: 500 }
                else
                    render json: { Mensagem: "Senha inválida.", Codigo: 400 }
                end
            rescue
                render json: { Mensagem: "Usuário inválido.", Codigo: 400 }
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
