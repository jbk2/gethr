class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(params[:company].permit(:name, :website, :hr_contact, :hr_contact_email))
    # Company.create({name: 'New Co Ltd', website: 'http://gethr.io/', hr_contact: 'Miss Lady', hr_contact_email: 'hr@gethr.io'})
    redirect_to '/companies'
  end
end
