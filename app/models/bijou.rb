class Bijou < ApplicationRecord
  monetize :price_cents
  acts_as_taggable_on :tags
  has_many :pictures, dependent: :destroy
end
