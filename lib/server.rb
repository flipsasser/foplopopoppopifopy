require_relative './oppificator'
require 'sinatra/base'
require 'pry'

module Oppify
 class Server < Sinatra::Base

   def oppifier
     Oppify::Oppificator.new(params[:t])
   end

   before do
    content_type :json
   end

   get '/deoppify' do
     {text: oppifier.deoppify}.to_json
   end

   get '/oppify' do
     {text: oppifier.oppify}.to_json
   end

 end
end

