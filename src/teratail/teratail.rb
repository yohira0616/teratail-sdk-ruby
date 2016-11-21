require './service/question_service.rb'
require './service/tag_service.rb'
require './service/user_service.rb'

class Teratail
  def initialize(access_token)
    @questionService = QuestionService.new(access_token)
    @tagService = TagService.new(accessToken)
    @userService = UserService.new(accessToken)
  end

  def question
    @questionService
  end

  def tag
    @tagService
  end

  def user
    @userService
  end
end
