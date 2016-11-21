require 'json'
require 'rest-client'
require 'yaml'

class UserService
  def initialize(access_token)
    @accessToken = access_token
    @config = YAML.load_file('./config.yml')
  end
end
