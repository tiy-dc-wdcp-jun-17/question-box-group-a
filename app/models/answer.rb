class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  include PgSearch
  multisearchable :against => [:body]
end
