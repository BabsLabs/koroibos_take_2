require 'csv'

desc "Import data from CSV file"
  task :import_test => [:environment] do
    Rails.env = 'test'
    Rake::Task["db:seed"].invoke

    csv_file = "db/data/olympic_data_2016.csv"

    # Import counters
    o = 0
    s = 0
    e = 0
    m = 0
    oe = 0
    os = 0

    CSV.foreach(csv_file, :headers => true) do |row|
      olympian = Olympian.find_or_create_by!(
        :name => row[0],
        :sex => row[1],
        :age => row[2],
        :height => row[3],
        :weight => row[4],
        :team => row[5]
      )
      puts "Olympian #{o} found or imported"
      o += 1

      sport = Sport.find_or_create_by!(
        :sport => row[7]
      )
      puts "Sport #{s} found or imported"
      s += 1

      event = Event.find_or_create_by!(
        :event => row[8],
        :games => row[6],
        :sport_id => sport.id
      )
      puts "Event #{e} found or imported"
      e += 1

      Medal.find_or_create_by!(
        :medal => row[9],
        :olympian_id => olympian.id,
        :event_id => event.id
      )
      puts "Medal #{m} found or imported"
      m += 1

      OlympianEvent.find_or_create_by!(
        :olympian_id => olympian.id,
        :event_id => event.id
      )
      puts "OlympianEvent #{oe} found or imported"
      oe += 1

      OlympianSport.find_or_create_by!(
        :olympian_id => olympian.id,
        :sport_id => sport.id
      )
      puts "OlympianSport #{os} found or imported"
      os += 1
    end

    medals_to_update = Medal.all
    medals_to_update.each do |medal|
      if medal.medal == "NA"
        medal.delete
        puts "Medal deleted!"
      end
    end
end
