require 'rails_helper'

# RSpec.feature "user can search by zip" do
#   scenario "user sees list of 10 closest stations" do
#     # visit "/"
#
#     # fill_in "search", with: "80203"
#     # click_on "Locate"
#
#     visit "/search?zip=80203"
#
#     expect(current_path).to eq "/search?zip=80203"
#
#     expect(page).to have_content "Name"
#     expect(page).to have_content "Address"
#     expect(page).to have_content "Fuel Type"
#   end

describe NrelService do
  context "#stations" do
    VCR.use_cassette("stations") do

    stations = NrelService.new.get_stations("zip", "80203")

    expect(stations.count).to eq(10)
    expect(stations.first.name).to eq ("")

    end
  end
 end
