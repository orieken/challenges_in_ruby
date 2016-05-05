ENV['RACK_ENV'] ||= 'development'
require 'rspec'

require 'active_record'
require 'rack/test'
require 'json'
require 'factory_girl'
require 'pry'
require 'yaml'
require 'faker'


db_config = YAML::load(File.open('./config/database.yml'))
ActiveRecord::Base.establish_connection(db_config['development'])


require './coding_challenges.rb'

module RSpecMixin
  include Rack::Test::Methods

  def app
    described_class
  end
end


RSpec.configure do |config|
  config.include RSpecMixin
  config.include FactoryGirl::Syntax::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.before(:suite) do
    load './db/schema.rb'
    FactoryGirl.find_definitions
  end
end
