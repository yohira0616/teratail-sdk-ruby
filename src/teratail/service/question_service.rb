require 'json'
require 'rest-client'
require 'yaml'
require './src/teratail/common/api_client_helper.rb'

class QuestionService
  include ApiClientHelper
  def initialize(access_token = '')
    @access_token = access_token
    @config = YAML.load_file('./src/teratail/config.yml')
  end

  def find_all(page = 1, limit = 20)
    path = "#{@config['teratail']['host']}questions#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_one(question_id)
    path = "#{@config['teratail']['host']}questions/#{question_id}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end
end
