class Company < ActiveRecord::Base
  has_many :memberships, dependent: :destroy
  has_many :profiles, :through => :memberships

  has_many :participations, dependent: :destroy
  has_many :exhibitions, :through => :participations

  has_many :earnings, dependent: :destroy
  has_many :certifications, :through => :earnings

  has_many :honors

  belongs_to :user
end
