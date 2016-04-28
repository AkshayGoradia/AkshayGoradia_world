class Article < ActiveRecord::Base
  # Relationships
  belongs_to :category

  # Validations
  validate_presence_of :title, :context

  # Scopes
  scope :alphabetical, -> { order("title") }
  scope :active,       -> { where(active: true) }

end
