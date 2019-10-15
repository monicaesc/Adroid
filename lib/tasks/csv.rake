
namespace :csv do
  desc "TODO"

  task import_met_objects: :environment do
    require 'rubygems'
    require 'open-uri'
    require 'csv'

    CSV.foreach(open("https://media.githubusercontent.com/media/metmuseum/openaccess/master/MetObjects.csv"), headers: true) do |row|
      @artist = Artist.find_or_create_by(name: row["Artist Display Name"]) if row["Artist Display Name"]

      p @artist
    end

  end
end
