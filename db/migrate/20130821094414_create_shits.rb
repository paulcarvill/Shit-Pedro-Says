class CreateShits < ActiveRecord::Migration
  def change
    create_table :shits do |t|
      t.text :content

      t.timestamps
    end
  end
end
