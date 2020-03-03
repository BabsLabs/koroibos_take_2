require "rails_helper"

describe "Olympian Endpoint" do
  it "returns a list of all olympians with their name, team, age, sport, and total_meadls_won" do
    get "/api/v1/olympians"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to have_key :olympians
    expect(parsed_response[:olympians]).to be_an Array
    expect(parsed_response[:olympians][0]).to have_key :name
    expect(parsed_response[:olympians][0]).to have_key :age
    expect(parsed_response[:olympians][0]).to have_key :team
    expect(parsed_response[:olympians][0]).to have_key :sport
    expect(parsed_response[:olympians][0]).to have_key :total_medals_won
  end
end