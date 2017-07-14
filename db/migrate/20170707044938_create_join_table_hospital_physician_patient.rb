class CreateJoinTableHospitalPhysicianPatient < ActiveRecord::Migration[5.0]
  def change
    create_join_table :physicians, :patients do |t|
      # t.index [:physician_id, :patient_id]
      # t.index [:patient_id, :physician_id]
    end
  end
end
