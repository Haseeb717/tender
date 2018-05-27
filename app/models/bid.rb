class Bid < ApplicationRecord
  belongs_to :tender
  belongs_to :user
end
