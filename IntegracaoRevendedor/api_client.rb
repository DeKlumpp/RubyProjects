require 'faraday'

client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    #config.token_auth('d381a6ed7c24ee1e634e764154196604')
end

response = client.post do |req|
    req.url '/api/usuario/login'
    #req.url '/api/usuario/show'
    req.headers['Content-Type'] = 'application/json'
    req.body = '{ "usuario": { "email":  "email@7.com.br", "senha": "887051" } }'
    #req.body='{ "post": { "title": "Title", "body": "Text" } }'
end

require 'oj'

puts Oj.load(response.body)
