require 'rspec'
require 'spec_helper'

RSpec.describe 'UserServiceTest' do
  config = YAML.load_file('./spec/test_config.yml')
  access_token = config['access_token']
  target = UserService.new(access_token)
  # TODO: テストコードの記述
  it '1 + 1 は 2 になること' do
    expect(1 + 1).to eq 2
  end
end
