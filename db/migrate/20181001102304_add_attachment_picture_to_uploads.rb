class AddAttachmentPictureToUploads < ActiveRecord::Migration
  def self.up
    change_table :uploads do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :uploads, :picture
  end
end
