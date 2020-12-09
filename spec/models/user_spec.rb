require 'rails_helper'

RSpec.describe User, type: :model do
  context 'factory bot default test' do
    it ' password cannot be blank' do
      expect {create(:user) }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it ' user created by factory should have email=john.doe@example.com' do
      user = create(:user, password: "SamplePassword")

      expect(user.email).to eq("john.doe@example.com")
    end
  end
end
