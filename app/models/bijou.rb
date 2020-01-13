class Bijou < ApplicationRecord
  monetize :price_cents
  acts_as_taggable_on :tags
end
