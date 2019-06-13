class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true, null: false
      t.references :happy, foreign_key: true, null: false
      t.text :text
      t.timestamps
    end
  end
end
