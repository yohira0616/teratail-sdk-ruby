require 'json'
require 'rest-client'
require 'yaml'
require './common/api_client_helper.rb'

class TagService
  include ApiClientHelper

  def initialize(accessToken)
    @accessToken=accessToken
    @config=YAML.load_file("./config.yml")
  end

  def find_all(page=1,limit=20)
    path= "#{@config["teratail"]["host"]}tags#{make_request_parameter(page,limit)}"
    response = RestClient.get path
    JSON.parse response.to_s
  end

  def find_one(tag_name)
    path= "#{@config["teratail"]["host"]}tags/#{tag_name}"
    response = RestClient.get path
    JSON.parse response.to_s
  end

  def find_by_tag_name(tag_name,page=1,limit=20)
    path= "#{@config["teratail"]["host"]}tags/#{tag_name}/questions#{make_request_parameter(page,limit)}"
    response = RestClient.get path
    JSON.parse response.to_s
  end

end
