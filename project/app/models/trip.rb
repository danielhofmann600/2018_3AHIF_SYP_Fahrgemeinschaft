class Trip < ApplicationRecord
  has_many :user
  belongs_to :route
end
