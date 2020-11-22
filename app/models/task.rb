class Task < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags
  validates :description, :presence => true
  validates :date, :presence => true

  scope :with_tag, proc { | tag |
    if tag.present?
        joins(:tags).where(tags: { id: tag })
    end
}
end
