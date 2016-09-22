class CreateAtts < ActiveRecord::Migration[5.0]
  def change
    create_table :atts do |t|
      t.string :attendance

      t.timestamps
    end
  end
end
