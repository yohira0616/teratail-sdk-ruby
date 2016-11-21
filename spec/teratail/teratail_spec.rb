require 'rspec'
require 'spec_helper'

RSpec.describe '四則演算' do
  config = YAML.load_file('./spec/test_config.yml')
  access_token = config['access_token']
  puts access_token
  client = Teratail.new(access_token)

  it '1 + 1 は 2 になること' do
    questions = client.question.find_all
    expect(questions['meta']['message']).to eq 'success'

    expect(1 + 1).to eq 2
  end
end
