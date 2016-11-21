require 'json'
require 'rest-client'
require 'yaml'
require './common/api_client_helper.rb'

class TagService

  def initialize(accessToken)
    @accessToken=accessToken
    @config=YAML.load_file("./config.yml")
  end

  def find_all(page=20,limit=1)
    response = RestClient.get @config["teratail"]["host"]+'tags'+ ApiClientHelper.make_request_parameter(page,limit)
    JSON.parse response.to_s
  end

  def find_one(tag_name)
    response = RestClient.get @config["teratail"]["host"]+'tags/'+tag_name
    JSON.parse response.to_s
  end

  def find_by_tag_name(tag_name,page=20,limit=1)
    response = RestClient.get @config["teratail"]["host"]+'tags/'+tag_name+'/questions'+ApiClientHelper.make_request_parameter(page,limit)
    JSON.parse response.to_s
  end

end
