require 'spec_helper'
require File.join(Dir.pwd, 'binary_search', 'bs.rb')

RSpec.describe 'search' do
  it '' do
    expect(search((0..100).to_a, 50)).to eql 50
  end
end
