class Question < ApplicationRecord
  include PgSearch
  acts_as_taggable
  has_many :answers
  belongs_to :user

  pg_search_scope :search_for, against: %i(title body), using: {tsearch: { any_word: true} }
  multisearchable against: %i(title body)
end
