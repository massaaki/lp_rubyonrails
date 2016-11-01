class CreateList < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :email
      t.string :type_user

      t.timestamps
    end
  end
end
