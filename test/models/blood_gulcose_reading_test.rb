require 'test_helper'

class BloodGulcoseReadingTest < ActiveSupport::TestCase
  test " Gulcose reading must contain value" do
    glucose_reading = BloodGulcoseReading.new
    assert_not glucose_reading.save!
  end

end
