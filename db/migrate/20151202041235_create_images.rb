class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :urls

      t.timestamps
    end
  end
end
