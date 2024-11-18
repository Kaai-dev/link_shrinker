class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :input_url
      t.string :shrinked_url

      t.timestamps
    end
    add_index :links, :input_url
    add_index :links, :shrinked_url
  end
end
