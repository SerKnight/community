class CreateAdventureUser < ActiveRecord::Migration
  def change
    create_table :adventures_users, :id => false do |t|
      t.integer :user_id
      t.integer :adventure_id
    end
  end
end
