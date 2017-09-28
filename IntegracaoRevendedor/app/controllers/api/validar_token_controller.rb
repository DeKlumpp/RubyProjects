module Api
    class Validar_TokenController < ApplicationController

        require 'json'

        def self.validar(token)
            begin
                validacao_token = Validar_Token.find_by(TOKEN: token)

                data_criacao = validacao_token.updated_at - 3*60*60
                data_agora = Time.now.utc - 3*60*60
                if(((data_agora - data_criacao) /1.hour).round > 1)
                    return false
                else
                    return !validacao_token.blank?
                end
            rescue
                render json: { mensagem: "Erro inexperado, por favor, contate a nossa central de atendimento.", codigo: 400 }
            end
        end

        def self.criar(token, email)
            begin
                usuario_token = Validar_Token.find_by(EMAIL: email)
                puts usuario_token.token
                usuario_token.token = token
                usuario_token.save

                return true;
            rescue
                criar_token= Validar_Token.new(email: email, token: token)
                puts criar_token
                criar_token.save

                return true;
            end
        end
    end
end