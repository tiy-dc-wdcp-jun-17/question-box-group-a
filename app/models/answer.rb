class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  include PgSearch

  pg_search_scope :search_for, against: %i(body), using: {tsearch: { any_word: true} }
  multisearchable against: %i(body)
end
