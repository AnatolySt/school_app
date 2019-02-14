class SummaryController < ApplicationController

  def index
    @summary = Summary.all.as_json.first
  end

end

