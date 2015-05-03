require 'rails_helper'

describe 'company home page' do
  context 'no companies have been added yet' do
    it "should display 'No companies yet.' message" do
      visit '/companies'
      expect(page).to have_content 'No companies yet.'
    end
  end

  it "should display 'Add company.'" do
    visit '/companies'
    expect(page).to have_link 'Add company.'
  end

  it 'should link to a company creation page' do
    visit '/companies'
    click_link 'Add company.'
    expect(current_path).to eq '/companies/new'
  end
end

describe 'new company page' do
  it 'should display a new company form with relevant fields to complete' do
    visit '/companies/new'
    expect(page).to have_content 'Company name:'
  end
end
