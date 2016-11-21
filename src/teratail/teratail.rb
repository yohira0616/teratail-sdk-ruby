require './service/question_service.rb'
require './service/tag_service.rb'
require './service/user_service.rb'

class Teratail
  def initialize(access_token)
    @question_service = QuestionService.new(access_token)
    @tag_service = TagService.new(access_token)
    @user_service = UserService.new(access_token)
  end

  def question
    @question_service
  end

  def tag
    @tag_service
  end

  def user
    @user_service
  end
end
