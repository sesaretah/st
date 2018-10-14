class AddProductIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :product_id, :integer
  end
end
