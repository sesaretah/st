class Packaging < ActiveRecord::Base
  belongs_to :product
  belongs_to :packaging_type
end
