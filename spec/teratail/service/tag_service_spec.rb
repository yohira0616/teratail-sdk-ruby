require 'rspec'
require 'spec_helper'
require 'yaml'

RSpec.describe 'TagServiceTest' do
  config = YAML.load_file('./spec/test_config.yml')
  access_token = config['access_token']
  target = TagService.new(access_token)

  it '#find_allが200で返ってくること' do
    actual = target.find_all
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_oneが200で返ってくること' do
    actual = target.find_one('Ruby')
    expect(actual['meta']['message']).to eq 'success'
  end

  it '#find_by_tag_nameが200で返ってくること' do
    actual = target.find_by_tag_name('Ruby', 1, 15)
    expect(actual['meta']['message']).to eq 'success'
    expect(actual['questions'].size).to eq 15
  end
end
