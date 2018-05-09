class PriceCommunity < ApplicationRecord
  belongs_to :price
  belongs_to :community
end
