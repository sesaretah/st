class AddProductIdToPackaging < ActiveRecord::Migration
  def change
    add_column :packagings, :product_id, :integer
  end
end
