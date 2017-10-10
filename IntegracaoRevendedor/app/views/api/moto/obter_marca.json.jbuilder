json.array! @marcas do |marca|
    json.CodigoMarca marca.ID
    json.NomeMarca marca.MARCA
end