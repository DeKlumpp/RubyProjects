require 'faraday'

client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
end

response = client.post do |req|
    #req.url '/api/usuario/login'
    req.url '/api/moto/obterEstoqueMoto'
    req.headers['Content-Type'] = 'application/json'
    #req.body = '{ "usuario": { "email":  "email@7.com.br", "senha": "887051" } }'
    req.body='{ "token": "cbf599e45142af8513c62313010245ba" }'
end

require 'oj'

puts Oj.load(response.body)
