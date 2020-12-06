class AddDateToBloodGulcoseReading < ActiveRecord::Migration[6.0]
  def change
    add_column :blood_gulcose_readings, :date, :date
  end
end
