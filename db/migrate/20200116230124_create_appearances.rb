class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|

      t.timestamps
    end
  end
end
