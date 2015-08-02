class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # t.has_many :cards
      # t.has_many :study_sessions
      # t.has_many :tags

      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
