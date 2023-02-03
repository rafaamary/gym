class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.string :name
      t.string :sobrenome
      t.string :phone
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
