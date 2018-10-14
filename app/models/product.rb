class Product < ActiveRecord::Base
  has_many :uploads
  has_many :faqs
  has_many :customers
end
