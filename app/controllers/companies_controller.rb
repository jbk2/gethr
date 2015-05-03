class CompaniesController < ApplicationController

  def index
  end

  def new
    @company = Company.new
  end

  def create
    render 'new'
  end

end
