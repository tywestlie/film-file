class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      # t = table
      #create table headers with :title and type = text
      t.text :title
      t.integer :year
      t.integer :box_office_sales

      t.timestamps null: false
    end
  end
end
