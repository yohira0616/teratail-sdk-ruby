require 'json'
require 'rest-client'
require 'yaml'

class QuestionService
  def initialize(access_token)
    @access_token = access_token
    @config = YAML.load_file('./config.yml')
  end
end
