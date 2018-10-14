class Customer < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "140x140>", :tiny => "20x20>" ,:thumb => "50x50>", :large => "600x600>"  }, :default_url => "/assets/noimage-35-:style.jpg"
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  belongs_to :product
end
