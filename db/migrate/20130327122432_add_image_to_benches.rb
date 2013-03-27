class AddImageToBenches < ActiveRecord::Migration
   def self.up
    add_attachment :benches, :image
  end

  def self.down
    remove_attachment :benches, :image
  end
end
