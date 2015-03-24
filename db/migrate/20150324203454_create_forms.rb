class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.references :user, index: true
      t.string :name
      t.string :email
      t.string :code

      t.timestamps null: false
    end

    add_foreign_key :forms, :users
  end
end
