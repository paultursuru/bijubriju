class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bijou

  monetize :amount_cents
end
