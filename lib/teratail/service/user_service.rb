require 'json'
require 'rest-client'
require 'yaml'
require './lib/teratail/common/api_client_helper.rb'

class UserService
  include ApiClientHelper
  def initialize(access_token = '')
    @access_token = access_token
    @config = YAML.load_file('./lib/teratail/config.yml')
  end

  def find_all(page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_by_name(query, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/search#{make_request_parameter(page, limit)}&q=#{query}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_one(display_name)
    path = "#{@config['teratail']['host']}users/#{display_name}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_my_tags(display_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/#{display_name}/tags#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_clipped_question(display_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/#{display_name}/clips#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_questions(display_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/#{display_name}/questions#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def find_replies(display_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/#{display_name}/replies#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def get_follower(display_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/#{display_name}/followers#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end

  def get_following(display_name, page = 1, limit = 20)
    path = "#{@config['teratail']['host']}users/#{display_name}/followings#{make_request_parameter(page, limit)}"
    response = RestClient.get(path, make_request_header(@access_token))
    JSON.parse response.to_s
  end
end
