class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |i|
      i.string :name
      i.integer :category_id
    end
  end
end
