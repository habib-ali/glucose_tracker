class CreateBloodGulcoseReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_gulcose_readings do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :value
      t.integer :reading_type

      t.timestamps
    end
  end
end