class Task < ApplicationRecord
  belongs_to :users
  has_and_belongs_to_many :tags
end
