class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :teaser
      t.string :author
      t.text :mission
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
