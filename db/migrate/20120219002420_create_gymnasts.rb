class CreateGymnasts < ActiveRecord::Migration
  def change
    create_table :gymnasts do |t|
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
