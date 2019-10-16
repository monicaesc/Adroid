
namespace :csv do
  desc "TODO"

  task import_met_objects: :environment do
    require 'rubygems'
    require 'open-uri'
    require 'csv'
    puts "start ...."

    CSV.foreach(open("https://media.githubusercontent.com/media/metmuseum/openaccess/master/MetObjects.csv"), headers: true) do |row|
      puts "Processing ...."
      if row[14]
        if row[12]
          #puts row[45]
          a = Artist.find_or_create_by(
             name: row[14],
             description: row[15],
             nationality: row[18],
             role: row[12],
             dob: row[19],
             dod: row[20])

          if row[6]
            b = Exhibition.new(
               department: row[4],
               title: row[6],
               object_date: row[21],
               link: row[40],
              artist_id: a.id,
            museum_id: 3)
            b.save
            puts "yes [#{row[6]}][#{row[4]}][#{a.name}] [#{row[42]}]"
          else
            puts "no"
          end
          ###
        end
        #######
      end
      ######
    end
    ##########
  end
end
