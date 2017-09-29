module Api
    class MotoController < ApplicationController

        require 'json'
        respond_to :json

        def obter_estoque_moto
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(!token_validado.blank?)
                pessoa_juridica = PessoaJuridica.find_by(NR_VCH_Cnpj: token_validado.cnpj, NM_VCH_Email: token_validado.email)
                @motos = ObterMoto.where(cd_num_PJ: pessoa_juridica.CD_NUM_Cliente, stAnuncio: 'A')

                respond_to do |format|
                    format.json
                end

                #render json: @motos.as_json
            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end
    end
end
