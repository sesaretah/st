class AddPackagingTypeIdToPackaging < ActiveRecord::Migration
  def change
    add_column :packagings, :packaging_type_id, :integer
  end
end
