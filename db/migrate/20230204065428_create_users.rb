class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # * string型のnamというカラムを作る
      t.string :name
      t.timestamps
    end
  end
end
