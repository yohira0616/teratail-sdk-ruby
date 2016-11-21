require 'rspec'
require 'spec_helper'

RSpec.describe '四則演算' do
  client = Teratail.new('')

  it '1 + 1 は 2 になること' do
    questions = client.question.find_all
    expect(questions['meta']['message']).to eq 'success'

    expect(1 + 1).to eq 2
  end
end
