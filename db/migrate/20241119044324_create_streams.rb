class CreateStreams < ActiveRecord::Migration[7.2]
  def change
    create_table :streams do |t|
      t.string :name
      t.date :date
      t.string :url

      t.timestamps
    end
  end
end
