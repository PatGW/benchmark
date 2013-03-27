class DropColumnImage < ActiveRecord::Migration
  change_table :benches do |t|
    t.remove :image
  end
end
