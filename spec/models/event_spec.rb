require 'rails_helper'

RSpec.describe Event, type: :model do

  let!(:event){ create(:event) }
  let!(:user){ create(:user) }

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
      user = User.create(:email => 'jane@doe.com', :password => 'pw1234',
        :password_confirmation => 'pw1234')

      event = Event.create(title: "BBQ", description: 'Shashliki', address: 'Винница, Южный Буг',
                           datetime:  DateTime.parse('28.10.2019 09:00'), user: user )  

      subscriber = Subscription.create(:user_name => 'Gus', :user_email => 'john@doe.com',  
                                       user_id: user.id, event_id: event.id)
      
      
      expect(event.visitors).to eq(event.subscribers)
    end
  end  

  describe '#pincode_valid?' do
    it 'pincode check' do
      expect(event.pincode_valid?('12345')).to eq true
    end
  end
end
