module Api
    class Validar_TokenController < ApplicationController

        respond_to :json
        require 'json'

        def self.validar(token)
            begin
                validacao_token = Validar_Token.find_by(TOKEN: token)

                data_criacao = validacao_token.updated_at - 3*60*60
                data_agora = Time.now.utc - 3*60*60
                if(((data_agora - data_criacao) /1.hour).round > 1)
                    return false
                else
                    return validacao_token
                end
            rescue
                return false
            end
        end

        def self.criar(cnpj, token, email)
            begin
                usuario_token = Validar_Token.find_by(email: email)
                usuario_token.token = token
                usuario_token.save

                return true;
            rescue
                criar_token= Validar_Token.new(cnpj: cnpj, email: email, token: token)
                criar_token.save

                return true;
            end
        end
    end
end