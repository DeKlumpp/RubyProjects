module Api
    class MotoController < ApplicationController

        require 'json'
        respond_to :json

        def obter_estoque_moto
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(!token_validado.blank?)
                pessoa_juridica = PessoaJuridica.find_by(NR_VCH_Cnpj: token_validado.cnpj, NM_VCH_Email: token_validado.email)
                @estoque = ObterEstoqueMoto.where(cd_num_PJ: pessoa_juridica.CD_NUM_Cliente, stAnuncio: 'A')

                respond_to do |format|
                    format.json
                end

            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end

        def obter_marca
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(!token_validado.blank?)
                @marcas = ObterMarcaMoto.all

                respond_to do |format|
                    format.json
                end

            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end

        def obter_modelo
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(!token_validado.blank?)
                @modelos = ObterModeloMoto.where(ID_MARCA: params[:moto][:codigomarca])

                respond_to do |format|
                    format.json
                end

            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end

        def obter_versao
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(!token_validado.blank?)
                @versoes = ObterVersaoMoto.where(ID_MODELO: params[:moto][:codigomodelo])

                respond_to do |format|
                    format.json
                end

            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end

        def obter_cor
            token_validado = Validar_TokenController.validar(params[:moto][:token])

            if(!token_validado.blank?)
                @cores = ObterCorMoto.all

                respond_to do |format|
                    format.json
                end

            else
                render json: { mensagem: "Token expirado, por favor, refaça o login.", codigo: 400 }
            end
        end

    end
end
