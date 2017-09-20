class SearchController < ApplicationController
  def new
    @results = PgSearch.multisearch(params[:search]).page(params[:page]).per(5)
  end
end
