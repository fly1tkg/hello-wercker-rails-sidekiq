class CreateMeats < ActiveRecord::Migration
  def change
    create_table :meats do |t|
      t.string :kind
      t.string :name
      t.timestamps
    end
  end
end
