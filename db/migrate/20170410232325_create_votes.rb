class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.datetime :date
      t.belongs_to :user
      t.belongs_to :work
      t.timestamps
    end
  end
end
