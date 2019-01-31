class CreateSpectacles < ActiveRecord::Migration[5.2]
  def change
    create_table :spectacles do |t|
      t.string :name
      t.string :category
      t.string :place
      t.string :address
      t.date :date_start
      t.date :date_finish
      t.string :type_event
      t.string :email_user

      t.timestamps
    end
  end
end
