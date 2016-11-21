require "./service/question_service.rb"
require "./service/tag_service.rb"
require "./service/user_service.rb"

class Teratail

  def initialize(accessToken)
    @questionService = QuestionService.new(accessToken)
    @tagService= TagService.new(accessToken)
    @userService= UserService.new(accessToken)
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
