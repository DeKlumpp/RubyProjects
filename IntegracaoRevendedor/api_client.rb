require 'faraday'

client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
end

response = client.post do |req|
    req.url '/api/usuario/login'
    #req.url '/api/moto/obterEstoqueMoto'
    req.headers['Content-Type'] = 'application/json'
    req.body = '{ "usuario": { "cnpj": "03347828000109", "email":  "teste.integracao@webmotors.com.br", "senha": "teste123" } }'
    #req.body='{ "token": "7bd0a8430815f2928b7ef1e135a52496" }'
end

require 'oj'

puts Oj.load(response.body)
