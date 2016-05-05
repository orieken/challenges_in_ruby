require 'sinatra/base'
require 'mysql2'
require 'sinatra/activerecord'
require 'protected_attributes'

Dir['./models/*.rb'].each { |file| require file }

class Challenges < Sinatra::Base
  # register Sinatra::ActiveRecordExtension

  set :database_file, './config/database.yml'
  set :foo, 'bar'

  get '/' do
    'Hello world!'
  end
end
