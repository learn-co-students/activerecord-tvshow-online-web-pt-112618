class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |x|
      x.string :name
      x.string :network
      x.string :day
      x.integer :rating
    end
  end
end
