require 'rspec'
require 'spec_helper'

RSpec.describe 'QuestionServiceTest' do
  config = YAML.load_file('./spec/test_config.yml')
  access_token = config['access_token']
  target = QuestionService.new(access_token)

  it '#find_allが200で返ってくること' do
    actual = target.find_all(1, 30)
    expect(actual['meta']['message']).to eq 'success'
    expect(actual['questions'].size).to eq 30
  end

  it '#find_oneが200で返ってくること' do
    actual = target.find_one(500)
    expect(actual['meta']['message']).to eq 'success'
  end
end
