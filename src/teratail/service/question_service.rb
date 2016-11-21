require 'json'
require 'rest-client'
require 'yaml'

class QuestionService

  def initialize(accessToken)
    @accessToken=accessToken
    @config=YAML.load_file("./config.yml")
  end

end
