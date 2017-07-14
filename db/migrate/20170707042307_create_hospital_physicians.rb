class CreateHospitalPhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :hospital_physicians do |t|
      t.string :name
      t.integer :age
      t.string :specialization
      t.integer :experience

      t.timestamps
    end
  end
end
