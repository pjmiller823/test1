class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :thing1
      t.string :thing2
      t.string :thing3

      t.timestamps
    end
  end
end
