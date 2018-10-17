class Profile < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "140x140>", :tiny => "20x20>" ,:thumb => "35x35>", :large => "500x500>"  }, :default_url => "/assets/noimage-35-:style.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :memberships, dependent: :destroy
  has_many :companies, :through => :memberships
  belongs_to :user

  def fullname
    "#{self.name} #{self.surename}"
  end
end
