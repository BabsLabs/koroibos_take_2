require "rails_helper"

describe "Events endpoint" do
  it "sends back a list of all olympians" do
    get "/api/v1/events"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to have_key :events
    expect(parsed_response[:events]).to be_an Array
    expect(parsed_response[:events][0]).to have_key :sport
    expect(parsed_response[:events][0]).to have_key :events
    expect(parsed_response[:events][0][:events]).to be_an Array
  end

end