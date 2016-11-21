require 'rspec'
require 'spec_helper'

RSpec.describe 'ApiClientHelperTest' do
  before :all do
    @target = Object.new
    @target.extend ApiClientHelper
  end

  it '#make_request_headerのテスト__access_tokenが存在しない場合、空のインスタンスを返す' do
    actual = @target.make_request_header('')
    expect(actual.empty?).to eq true
  end

  it '#make_request_headerのテスト__access_tokenが存在する場合、Bearerトークンを返す' do
    actual = @target.make_request_header('token_123456')
    expect(actual['Authorization']).to eq 'Bearer token_123456'
  end

  it '#make_request_parameterのテスト' do
    actual = @target.make_request_parameter(2, 15)
    expect(actual).to eq '?page=2&limit=15'
  end
end
