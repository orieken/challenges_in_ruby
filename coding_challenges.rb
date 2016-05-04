require 'sinatra/base'
require 'sinatra/activerecord'


class Challenges < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  set :database_file, './config/database.yml'
  set :foo, 'bar'

  get '/' do
    'Hello world!'
  end
end
