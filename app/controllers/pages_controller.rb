class PagesController < ApplicationController
  before_action :load_data, only: [:students]


  def stats
    @stats = Summary.all.as_json.first
  end

  def students
  end

  private

  def load_data
    @pupils = Pupil.all.as_json
    @courses = Course.all.as_json
    @schools = School.all
  end
end