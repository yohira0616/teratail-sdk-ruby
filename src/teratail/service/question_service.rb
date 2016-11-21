require 'json'
require 'rest-client'
require 'yaml'
require './common/api_client_helper.rb'

class QuestionService
  include ApiClientHelper
  def initialize(access_token = '')
    @access_token = access_token
    @config = YAML.load_file('./config.yml')
  end
end
