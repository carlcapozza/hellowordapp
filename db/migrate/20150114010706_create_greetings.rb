class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :greeting

      t.timestamps
    end
  end
end
