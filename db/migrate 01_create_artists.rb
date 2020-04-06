class CreateArtists < ActiveRecord::Migration[5.2]
  def change 
   
   ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
 
ActiveRecord::Base.connection.execute(sql)
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
end