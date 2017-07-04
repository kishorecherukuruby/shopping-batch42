class CreatePromoCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :promo_codes do |t|
      t.string :code
      t.string :valid_from
      t.string :valid_till
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
