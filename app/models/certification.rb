class Certification < ActiveRecord::Base
    after_save ThinkingSphinx::RealTime.callback_for(:certification)
  has_many :earnings, dependent: :destroy
  has_many :companies, :through => :earnings
end
