class CreateHappies < ActiveRecord::Migration[5.2]
  def change
    create_table :happies do |t|
      t.string      :name
      t.text        :text,          null: false
      t.text        :image
      t.references  :user,          foreign_key: true
      t.integer     :category_id,   null: false
      t.timestamps
    end
  end
end
