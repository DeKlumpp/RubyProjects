json.array! @versoes do |versao|
    json.AnoModelo versao.ANO_MODELO
    json.CodigoNumeroMarchas versao.ID_NUMERO_MARCHAS
    json.CodigoTipoRefrigeracao versao.ID_TIPO_REFRIGERACAO
    json.CodigoTipoAlimentacao versao.ID_TIPO_ALIMENTACAO
    json.CodigoTipoMotor versao.ID_TIPO_MOTOR
    json.CodigoTipoPartida versao.ID_TIPO_PARTIDA
    json.CodigoTipoFrio versao.ID_TIPO_FREIO
end