json.array! @modelos do |modelo|
    json.CodigoModelo modelo.ID_MODELO
    json.NomeModelo modelo.MODELO
    json.NomeEstilo modelo.NOME_ESTILO
end