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

    result = NrelService.new.get_stations("80203")

    expect(result["total_results"]).to eq(1)
    expect(result["fuel_stations"].first["station_name"]).to eq("CADACHARGEPOINT")

    end
  end
 end
