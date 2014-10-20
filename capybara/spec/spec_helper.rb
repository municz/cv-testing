require 'rubygems'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {debug: false, phantomjs_options: %w[--ignore-ssl-errors=yes]})
end

Capybara.default_driver = :poltergeist
Capybara.current_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.run_server = false

include Capybara::DSL
