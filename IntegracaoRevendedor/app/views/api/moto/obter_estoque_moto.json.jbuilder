json.array! @motos do |moto|
    #json do
        json.CodigoAnuncio moto.cdAnuncio
        json.CodigoModalidade moto.cd_num_VersaoProduto
        json.NomeMoto moto.nmMoto
        json.Placa moto.dsPlaca
        json.AnoDoModelo moto.nrAnoModelo
        json.AnoDeFabricacao moto.nrAnoFabricacao
        json.CodigoMarca moto.cdMarca
        json.CodigoModelo moto.cdModelo
        json.CodigoCorPredominante moto.cdCorPredominante
        json.DescricaoCorPredominante moto.dsCor.split("-")[0]
        json.CodigoCorSecundaria moto.cdCorSecundaria
        json.DescricaoCorSecundaria moto.dsCor.split("-").length > 1 ? moto.dsCor.split("-")[1] : ""
        json.CodigoNumeroMarchas moto.cdItemMarcha
        #json.DescricaoNumeroMarchas moto
        json.CodigoTipoRefrigeracao moto.cdItemRefrigeracao
        #json.DescricaoTipoRefrigeracao moto
        json.CodigoTipoAlimentacao moto.cdItemAlimentacao
        #json.DescricaoTipoAlimentacao moto
        json.CodigoTipoMotor moto.cdItemMotor
        #json.DescricaoTipoMotor moto
        json.CodigoTipoPartida moto.cdItemPartida
        #json.DescricaoTipoPartida moto
        json.CodigoTipoFreio moto.cdItemFreio
        #json.DescricaoTipoFreio moto
        json.NumeroCilindradas moto.nrCilindradas
        json.Km moto.nrKm
        json.Km moto.nrKm
        json.EstiloMoto moto.cdEstiloMoto
        json.PrecoVenda moto.vlPrecoVenda
        json.PrecoRevenda moto.vlPrecoRevenda
        #json.OpcionalNovo do
        #end
        #json.OpcionalUsado do
        #end
        json.Observacao moto.dsObservacao
        json.DataInclusao moto.dt_dat_Inclusao
        json.DataUltimaAlteracao moto.dt_dat_Alteracao
        json.GarantiaDeFabrica moto.tpGarantiaFabrica
        json.IPVAPago moto.tpIpvaPago
        json.Licenciado moto.tpLicenciada
        json.TipoAnuncio moto.tpAnuncio
        json.UnicoDono moto.tpUnicoDono
        json.Alienado moto.tpAlienada
        #json.TipoConsistencia moto.
    #end
end
