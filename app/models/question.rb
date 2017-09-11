class Question < ApplicationRecord
  include PgSearch
  pg_search_scope :search_for, against: %i(title body), using: { tsearch: { any_word: true } }
  acts_as_taggable
  has_many :answers
  belongs_to :user
end
