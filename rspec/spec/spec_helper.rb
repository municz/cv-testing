require 'rubygems'

require 'rspec'
require 'factory_girl'
require 'faker'

require_relative './factories'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
