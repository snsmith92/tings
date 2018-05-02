require 'rails_helper'

RSpec.describe Ad, elasticsearch: true, :type => :model do
  it 'should be indexed' do
     expect(Ad.__elasticsearch__.index_exists?).to be_truthy
  end

  describe '#search' do
    before(:each) do
      user = FactoryBot.create(:user)
      sign_in user
      FactoryBot.create(:ad)
      Ad.__elasticsearch__.refresh_index!
    end
    it "should index title" do
      expect(Ad.search("Car").records.length).to eq(1)
    end
    it "should index description" do
      expect(Ad.search("vehicle").records.length).to eq(1)
    end
    it "should not index email" do
      expect(Ad.search("factory@ruby.org").records.length).to eq(0)
    end
    it "should not index phone" do
      expect(Ad.search("2425350365").records.length).to eq(0)
    end
    it "should not index cost" do
      expect(Ad.search("3000.00").records.length).to eq(0)
    end
    it "should not index quantity" do
      expect(Ad.search("1").records.length).to eq(0)
    end
  end
end