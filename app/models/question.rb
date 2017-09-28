class Question < ApplicationRecord
  acts_as_taggable
  has_many :answers
  belongs_to :user
  include PgSearch
  multisearchable :against => [:title, :body]
end
