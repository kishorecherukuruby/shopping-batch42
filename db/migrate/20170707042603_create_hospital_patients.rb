class CreateHospitalPatients < ActiveRecord::Migration[5.0]
  def change
    create_table :hospital_patients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :ph_no

      t.timestamps
    end
  end
end
