class Order < ApplicationRecord
  belongs_to :tender
  belongs_to :user
  belongs_to :bid
end
