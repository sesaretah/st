class Company < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "140x140>", :tiny => "20x20>" ,:thumb => "50x50>", :large => "600x600>"  }, :default_url => "/assets/noimage-35-:style.jpg"
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  has_many :memberships, dependent: :destroy
  has_many :profiles, :through => :memberships

  has_many :participations, dependent: :destroy
  has_many :exhibitions, :through => :participations

  has_many :earnings, dependent: :destroy
  has_many :certifications, :through => :earnings

  has_many :honors
  has_many :products

  belongs_to :user
end
