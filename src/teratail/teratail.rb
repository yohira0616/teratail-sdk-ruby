require './service/question_service.rb'
require './service/tag_service.rb'
require './service/user_service.rb'

class Teratail
  def initialize(access_token)
    @questionService = QuestionService.new(access_token)
    @tagService = TagService.new(access_token)
    @userService = UserService.new(access_token)
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
