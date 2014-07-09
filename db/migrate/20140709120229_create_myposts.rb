class CreateMyposts < ActiveRecord::Migration
  def change
    create_table :myposts do |t|
      t.string :mytext

      t.timestamps
    end
  end
end
