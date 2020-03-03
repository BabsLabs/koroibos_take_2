require "rails_helper"

describe "Olympian Endpoint" do
  it "returns a list of all olympians with their name, team, age, sport, and total_meadls_won" do
    get "/api/v1/olympians"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to have_key :olympian_stats
    expect(parsed_response[:olympian_stats]).to have_key :total_competing_olympians
    expect(parsed_response[:olympian_stats]).to have_key :average_weight
    expect(parsed_response[:olympian_stats][:average_weight]).to have_key :unit
    expect(parsed_response[:olympian_stats][:average_weight][:unit]).to eq "kg"
    expect(parsed_response[:olympian_stats][:average_weight]).to have_key :male_olympians
    expect(parsed_response[:olympian_stats][:average_weight]).to have_key :female_olympians
    expect(parsed_response[:olympian_stats]).to have_key :average_age
  end
end