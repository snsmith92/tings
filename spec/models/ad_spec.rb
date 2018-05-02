require 'rails_helper'

RSpec.describe Ad, elasticsearch: true, :type => :model do
  it 'should be indexed' do
     expect(Ad.__elasticsearch__.index_exists?).to be_truthy
  end
end