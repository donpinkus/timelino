class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.text :content
      t.string :image
      t.text :caption
      t.references :timeline, index: true

      t.timestamps
    end
  end
end
