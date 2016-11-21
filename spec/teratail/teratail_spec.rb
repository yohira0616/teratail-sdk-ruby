require 'rspec'
require 'spec_helper'

RSpec.describe 'TeratailTest' do
  config = YAML.load_file('./spec/test_config.yml')
  access_token = config['access_token']
  client = Teratail.new(access_token)

  it 'APIとの疎通ができる' do
    questions = client.question.find_all
    expect(questions['meta']['message']).to eq 'success'
  end
end
