require 'rails_helper'

RSpec.describe BloodGulcoseReading, type: :model do
  context 'validations on blood glucose readings' do
    it 'need valid user' do
      expect {  create(:blood_gulcose_reading) }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'need value' do
      expect {  create(:blood_gulcose_reading, value: nil)}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should not record more than 4 readings for a single user' do
      user = create(:user, password: "SamplePassword")
      expect {
        5.times do |ind|
          blood_gulcose_reading = build(:blood_gulcose_reading, user: user)
          response = blood_gulcose_reading.save!
        end
      }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
