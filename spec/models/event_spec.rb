require 'rails_helper'

RSpec.describe Event, type: :model do

  let(:event){ create(:event, user: user) }
  let(:user){ create(:user) }

  describe 'validations check' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:datetime) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:photos) }
    it { should have_many(:comments) }
    it { should have_many(:subscriptions) }
    it { should have_many(:subscribers) }
  end

  describe '#visitors' do
    it 'return all visitors' do 
      jane = User.create(:email => 'jane@doe.com', :password => 'pw1234',
                                        :password_confirmation => 'pw1234')
      ork = User.create(:email => 'ork@doe.com', :password => 'pw12345',
                                        :password_confirmation => 'pw12345')

      event.subscribers << jane
       
      expect(event.visitors).to include(jane)
      expect(event.visitors).not_to include(ork)
      expect(event.visitors).to include(event.user)
    end
  end  

  describe '#pincode_valid?' do
    it 'pincode check' do
      expect(event.pincode_valid?('12345')).to eq true
    end
  end
end
