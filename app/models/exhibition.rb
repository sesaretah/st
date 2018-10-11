class Exhibition < ActiveRecord::Base
  after_save ThinkingSphinx::RealTime.callback_for(:exhibition)
  has_many :participations, dependent: :destroy
  has_many :companies, :through => :participations
end
