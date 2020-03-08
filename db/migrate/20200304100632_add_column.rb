class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_reference :result, :user, foreign_key: true
  end
end
