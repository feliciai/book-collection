class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :date_of_publication
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
