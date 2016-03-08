class RemoveLockableFromDevise < ActiveRecord::Migration
  def change
  	remove_column :users, :locked_At, :datetime
  end
end
