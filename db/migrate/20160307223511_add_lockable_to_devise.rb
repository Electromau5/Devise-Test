class AddLockableToDevise < ActiveRecord::Migration
  
  def up
  	add_column :users, :failed_attempts,:integer, default: 0, null: false
  	add_column :users, :unlock_token, :string
  	add_column :users, :locked_at, :datetime
  	add_index :users, :unlock_token, unique: true
  end

  def down
  	remove_column :failted_attempts, :unlock_token, :locked_at
  end
end


