class Earning < ActiveRecord::Base
  belongs_to :certification
  belongs_to :company
end
