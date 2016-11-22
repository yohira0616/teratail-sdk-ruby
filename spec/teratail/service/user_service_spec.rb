require 'rspec'
require 'spec_helper'
require 'yaml'

RSpec.describe 'UserServiceTest' do
  config = YAML.load_file('./spec/test_config.yml')
  access_token = config['access_token']
  target = UserService.new(access_token)

  display_name = 'teratail'

  it '#find_allが200で返ってくること' do
    actual = target.find_all
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_by_nameが200で返ってくること' do
    actual = target.find_by_name(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_oneが200で返ってくること' do
    actual = target.find_one(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_by_my_tagsが200で返ってくること' do
    actual = target.find_my_tags(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_clipped_questionが200で返ってくること' do
    actual = target.find_clipped_question(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_questionsが200で返ってくること' do
    actual = target.find_questions(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_repliesが200で返ってくること' do
    actual = target.find_replies(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_followerが200で返ってくること' do
    actual = target.get_follower(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_followingが200で返ってくること' do
    actual = target.get_following(display_name)
    expect(actual['meta']['message']).to eq 'success'
  end
end
