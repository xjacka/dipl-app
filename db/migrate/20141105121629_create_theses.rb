class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :name
      t.text :abstract
      t.string :language
      t.date :defended

      t.timestamps
    end
  end
end
