class CreateDudes < ActiveRecord::Migration
  def change
    create_table :dudes do |t|
      t.string :name, index: true
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
