class AddCoachesToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_reference :memberships, :coach, null: false, foreign_key: true
  end
end
