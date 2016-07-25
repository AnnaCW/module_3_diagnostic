require 'rails_helper'



RSpec.feature "user can search by zip" do
  scenario "user sees list of 10 closest stations" do
    visit "/"

    fill_in "search", with: "80203"
    click_on "Locate"

    expect(current_path).to eq "/search?zip=80203"

    expect(page).to have_content "Name"
    expect(page).to have_content "Address"
    expect(page).to have_content "Fuel Type"
  end
end
