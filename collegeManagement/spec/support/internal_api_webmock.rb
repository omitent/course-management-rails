# # require 'sinatra/base' 
# require_relative 'json_reader'
# class InternalApiWebmock < Sinatra::Base 
#   include JsonReader 
#   get '/users/*' do 
#     if params['users']
#        json_response 200, 'internal-api-webmock/valid-users.json' 
#     else
#        json_response 404, 'internal-api-webmock/invalid-users.json ' 
#     end 
#   end 
# end