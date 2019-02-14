class StudentsController < ApplicationController

  before_action :load_data, only: [:index]

  def index
  end

  private

  def load_data
    @schools = School.all
  end

end
