require 'json'
require 'rest-client'
require 'yaml'

class UserService

  def initialize(accessToken)
    @accessToken=accessToken
    @config=YAML.load_file("./../config.yml")
  end

end
