class Service < ApplicationRecord
  belongs_to :category
  belongs_to :provider
  has_many :orders
end
