class AddUserIdToSpectacles < ActiveRecord::Migration[5.2]
  def change
    add_reference :spectacles, :user, foreign_key: true
  end
end
