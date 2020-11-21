class Task < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags

  scope :with_tag, proc { | tag |
    if tag.present?
        joins(:tags).where(tags: { id: tag })
    end
}
end
