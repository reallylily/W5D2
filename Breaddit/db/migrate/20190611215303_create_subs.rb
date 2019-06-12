class CreateSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :mod_id, null: false
      t.timestamps
    end
    add_index :subs, :mod_id
  end
end
# A Sub is a topic-specific sub-forum to which users submit a Post. 
# Start by writing a Sub model and SubsController. The Sub should have 
# title and description attributes and a moderator association. The 
# creator of the Sub is the moderator.