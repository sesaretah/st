class Participation < ActiveRecord::Base
  belongs_to :exhibition
  belongs_to :company
end
