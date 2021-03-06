Dir[File.expand_path('../config/initializers', __FILE__) + '/**/*.rb'].each do |file|
  require file
end

Mongoid.load! File.expand_path('../config/mongoid.yml', __FILE__), ENV['RACK_ENV']

require 'slack-api-explorer/error'
require 'slack-api-explorer/version'
require 'slack-api-explorer/info'
require 'slack-api-explorer/models'
require 'slack-api-explorer/api'
require 'slack-api-explorer/app'
require 'slack-api-explorer/server'
require 'slack-api-explorer/service'
require 'slack-api-explorer/commands'
