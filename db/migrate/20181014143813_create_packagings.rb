class CreatePackagings < ActiveRecord::Migration
  def change
    create_table :packagings do |t|
      t.string :dimensions
      t.string :weight
      t.string :weight_scale
      t.integer :packaging_type
      t.string :color
      t.text :delivery_detail

      t.timestamps null: false
    end
  end
end
