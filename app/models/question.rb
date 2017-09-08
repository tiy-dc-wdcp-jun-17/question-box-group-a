class Question < ApplicationRecord
  acts_as_taggable
  has_many :answers
  belongs_to :user
end
