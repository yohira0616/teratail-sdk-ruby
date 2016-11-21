require 'json'
require 'rest-client'
require 'yaml'
require './common/api_client_helper.rb'

class UserService
  include ApiClientHelper
  def initialize(access_token = '')
    @access_token = access_token
    @config = YAML.load_file('./config.yml')
  end

  def find_all(page = 1, limit = 20)
  end

  def find_by_name(query, page = 1, limit = 20)
  end

  def find_one(display_name)
  end

  def find_my_tags(display_name, page = 1, limit = 20)
  end

  def find_clipped_question(display_name, page = 1, limit = 20)
  end

  def find_questions(display_name, page = 1, limit = 20)
  end

  def find_replies(display_name, page = 1, limit = 20)
  end

  def get_follower(display_name, page = 1, limit = 20)
  end

  def get_following(display_name, page = 1, limit = 20)
  end
end
