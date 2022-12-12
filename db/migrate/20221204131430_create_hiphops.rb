class CreateHiphops < ActiveRecord::Migration[7.0]
  def change
    create_table :hiphops do |t|
      t.string :artist
      t.string :groups
      t.string :subgenres

      t.timestamps
    end
  end
end
