class Company < ActiveRecord::Base
  has_many :memberships, dependent: :destroy
  has_many :profiles, :through => :memberships

  has_many :participations, dependent: :destroy
  has_many :exhibitions, :through => :participations

  belongs_to :user
end
