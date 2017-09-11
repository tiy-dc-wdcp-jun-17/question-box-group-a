class SearchController < ApplicationController
  def create
    @results = Question.search_for(params[:search])
  end
end
