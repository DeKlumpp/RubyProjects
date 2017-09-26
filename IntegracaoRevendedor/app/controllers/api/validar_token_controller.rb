module Api
    class Validar_TokenController < ApplicationController

        def validar(token, email)
            @validacao_token = Validar_Token.find_by(EMAIL: email)
            if @validacao_token.token == token
                return true
            else
                @new_token = Validar_Token.new()
                @new_token.email = @usuario.EMAIL
                @new_token.token = token
                @new_token.save
                return false
            end
        end
    end
end
