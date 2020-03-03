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

  it "sends back a list of all medalists for an event" do
      sport = Sport.create!(sport: 'Brians Sport')
      event = Event.create!(event: 'Brians Event', sport_id: sport.id, games: '2016 Summer')
      olympian_1 = Olympian.create!( name: "Stevie Jobs",
                                	 sex: "M",
                                   age: 22,
                                   height: 170,
                                   weight:	125,
                                   team: 'Romania',
                                   sport_id: sport.id)

      olympian_2 = Olympian.create!( name: "Hank Ford",
                                	 sex: "M",
                                   age: 30,
                                   height: 120,
                                   weight:	80,
                                   team: 'Russia',
                                   sport_id: sport.id)

      Medal.create!(medal: "Gold", event_id: event.id, olympian_id: olympian_1.id)
      Medal.create!(medal: "Silver", event_id: event.id, olympian_id: olympian_2.id)

      get "/api/v1/events/#{event.id}/medalists"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response).to have_key :event
      expect(parsed_response).to have_key :medalists
      expect(parsed_response[:medalists]).to be_an Array
      expect(parsed_response[:medalists][0]).to have_key :name
      expect(parsed_response[:medalists][0]).to have_key :team
      expect(parsed_response[:medalists][0]).to have_key :age
      expect(parsed_response[:medalists][0]).to have_key :medal
    end

    it "sends back an error message if no event is found" do
      get "/api/v1/events/10000000/medalists"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response).to eq "error: No event with that id found. Please try again."
    end
end