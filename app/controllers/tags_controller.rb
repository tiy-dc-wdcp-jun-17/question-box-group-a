class TagsController < ApplicationController
  def index
    @tags = Question.tag_counts(limit: 10).order(taggings_count: :desc)
  end
end
