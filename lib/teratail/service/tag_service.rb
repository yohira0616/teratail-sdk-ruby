require 'json'
require 'rest-client'
require 'yaml'
require './lib/teratail/common/api_client_helper.rb'

class TagService
  include ApiClientHelper

  def initialize(access_token = '')
    @access_token = access_token
    @config = YAML.load_file('./lib/teratail/config.yml')
  end

  def find_all(page = 1, limit = 20)
    path = "#{@config['teratail']['host']}tags#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_one(tag_name)
    path = "#{@config['teratail']['host']}tags/#{tag_name}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_by_tag_name(tag_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}tags/#{tag_name}/questions#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end
end
