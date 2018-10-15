class PackagingType < ActiveRecord::Base
  has_many :packagings, dependent: :destroy
end
