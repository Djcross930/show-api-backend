class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :episodes

      t.timestamps
    end
  end
end
