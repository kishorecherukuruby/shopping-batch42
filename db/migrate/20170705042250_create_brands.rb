class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :est
      t.string :country

      t.timestamps
    end
  end
end
