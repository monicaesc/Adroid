
namespace :csv do
  desc "TODO"

  task import_met_objects: :environment do
    require "csv"

    CSV.foreach("MetObjects.csv", headers: true) do |row|
      if false
        puts "yest"
      else
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
            #p "id[#{row[0]}] [#{row[12]}] - [#{row[14]}]- [#{row[15]}]  - [#{row[18]}] -  [#{row[19]}] - [#{row[20]}] - - [#{row[35]}]"




         end
  #        #p "#{row["Artist Role "]} #{row["Artist Display Name  "]}"
           #p row.inspect
        end
        # Lo importe a la tabla Artist para evitar
        # tener que unir dos tables por ahora.
        # La migracion estaba mala G, habia que hacerla con el numero
        # de la columna, no con el nombre como estaba al comienzo
  #      a = Artist.find_or_create_by(name: row["Artist Display Name"])
  #      a.update(description: row["Artist Display Bio"])
  #      p a
  #      p MetObject.find_or_create_by(artist_display_name: row["Artist Display Name"], artist_display_bio: row["Artist Display Bio"], artist_display_nationality: row["Artist Nationality"], artist_display_begin_date: row["Artist Begin Date"], artist_display_end_date: row["Artist End Date"])
      end
    end
    puts "task complete"
  end

end
