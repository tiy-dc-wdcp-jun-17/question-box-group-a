class SearchController < ApplicationController
  def query

    @results = PgSearch.multisearch(params[:q])
  end
end
